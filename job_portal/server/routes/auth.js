const express = require('express');
const { createUser, verifyUser, fetchUser, updateUser, fetchJob } = require('../controller/userController');
const { uploadImage } = require('../multer/uploadConfig');
const router = express.Router();

// Fetch jobs
router.get("/jobs", fetchJob);

// User registration
router.post("/register", uploadImage().single("profile_pic"), createUser);

// User login
router.post("/login", verifyUser);

// Fetch user data
router.post("/fetch", fetchUser);

// Update user data
router.post("/update", uploadImage().single("profile_pic"), updateUser);

// Handle 404 for unspecified routes
router.use((req, res) => {
    res.status(404).send({ message: 'Not Found', description: "escr" });
});

module.exports = router;