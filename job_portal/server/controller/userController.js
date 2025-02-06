const express = require("express");
const db = require("../db/db");
const fs = require("fs");

const sendErrorResponse = (res, message, err) => {
  return res.status(500).send({
    message: message,
    errorCode: err.code,
    description: err.message,
  });
};

module.exports = {
  createUser: (req, res) => {
    const {
      username,
      email,
      password,
      type,
      mobile,
      address,
      verified,
      description,
      country,
    } = req.body;

    const profile_pic = req.file ? req.file.filename : "no_profile";

    db.query(
      "INSERT into users (username,email,password,type,mobile,address,verified,description,country,profile_pic) VALUES (?,?,?,?,?,?,?,?,?,?)",
      [username, email, password, type, mobile, address, verified, description, country, profile_pic],
      (err) => {
        if (err) {
          return sendErrorResponse(res, "Registration Failed", err);
        }
        res.send({ message: "User registered successfully" });
      }
    );
  },

  verifyUser: (req, res) => {
    const { email, password } = req.body;
    db.query("SELECT * from users where email=? and password=?", [email, password], (err, data) => {
      if (err) return sendErrorResponse(res, "Login error", err);
      res.send({ userData: data });
    });
  },

  fetchUser: (req, res) => {
    const { id } = req.body;
    db.query("SELECT * from users where id=?", [id], (err, data) => {
      if (err) return sendErrorResponse(res, "Error fetching user", err);
      res.send({ userData: data });
    });
  },

  fetchJob: (req, res) => {
    const { id } = req.body;
    db.query("SELECT * from jobs where id=?", [id], (err, data) => {
      if (err) return sendErrorResponse(res, "Error fetching job", err);
      if (data.length === 0) {
        return res.status(404).send({ message: "Job not found" });
      }
      res.send({ jobData: data });
    });
  },

  updateUser: (req, res) => {
    const {
      id,
      username,
      email,
      mobile,
      address,
      description,
      country,
      oldImage,
    } = req.body;
    const profile_pic = req.file ? req.file.filename : oldImage;

    db.query(
      "UPDATE users SET username=?, email=?, mobile=?, description=?, country=?, profile_pic=? WHERE id=?",
      [username, email, mobile, description, country, profile_pic, id],
      (err) => {
        if (err) return sendErrorResponse(res, "Update Failed", err);
        res.send({
          file: req.file ? req.file : "false",
          old: oldImage,
          message: "Your Profile has been updated successfully",
        });
      }
    );
  },

  deleteImage: (req, res, next) => {
    if (req.file && req.body.oldImage) {
      const oldImagePath = `./public/uploads/${req.body.oldImage}`;
      if (fs.existsSync(oldImagePath)) {
        fs.unlink(oldImagePath, (err) => {
          if (err) return sendErrorResponse(res, "Image deletion failed", err);
          next();
        });
      } else {
        next();
      }
    } else {
      next();
    }
  },
};