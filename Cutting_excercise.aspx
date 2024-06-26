﻿<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cutting Exercise Routines</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4; /* Light Gray */
    }

    header {
      background-color: #333;
      color: #fff;
      padding: 20px 0;
      text-align: center;
      margin-bottom: 20px;
    }

    h1 {
      margin: 0;
      font-size: 36px;
    }

    .bulking-note {
      text-align: center;
      background-color: #ffcc00; /* Yellow */
      color: #333; /* Dark Gray */
      padding: 10px;
      font-size: 18px;
      margin-bottom: 20px;
    }

    .container {
      display: flex;
      justify-content: space-around;
      padding: 20px;
    }

    .exercise-section {
      flex: 1;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    li {
      margin-bottom: 20px;
    }

    .exercise-line {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    .exercise-line img {
      width: 200px;
      height: 150px;
      object-fit: cover;
      border-radius: 10px;
      margin-bottom: 10px;
    }

    .exercise-info {
      font-size: 16px;
      color: #555;
      text-align: center;
      margin-top: 10px;
    }

    .buttons {
      text-align: center;
      margin-bottom: 20px;
    }

    .buttons button {
      margin: 0 10px;
      padding: 10px 20px;
      background-color: #000; /* Black */
      border: none;
      border-radius: 5px;
      color: white;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      cursor: pointer;
      transition-duration: 0.4s;
      outline: none;
    }

    .buttons button:hover {
      background-color: #333; /* Darker Black */
    }

    .separator {
      width: 1px;
      height: 100%;
      background-color: #ccc;
      margin: 0 20px;
    }
  </style>
</head>

<body>

  <header>
    <div class="bulking-note">
      <p>Specialized Exercise Routines for Cutting</p>
      <p>Guidance: Follow these exercises to achieve a lean and sculpted physique during your cutting phase.</p>
    </div>
    <h1>Cutting Exercise Routines</h1>
  </header>

  <div class="buttons">
    <button onclick="showPushExercises()">Push Day</button>
    <button onclick="showPullExercises()">Pull Day</button>
    <button onclick="showLegExercises()">Leg Day</button>
  </div>

  <div class="container">
    <div class="exercise-section">
      <h2>Gym Exercises </h2><!---gonna change this-->
      <ul id="pushGymExercises">
        
      </ul>
    </div>

    <div class="separator"></div>

    <div class="exercise-section">
      <h2>Home Exercises</h2>
      <ul id="pushHomeExercises">
        
      </ul>
    </div>
  </div>

  <div class="container">
    
      <h2></h2>
      <ul id="pullGymExercises">
       
      </ul>
    </div>

    <div class="separator"></div>

    
      <h2></h2>
      <ul id="pullHomeExercises">
       
      </ul>
    </div>
  </div>

  <div class="container">
    
      <h2></h2>
      <ul id="legGymExercises">
        
      </ul>
    </div>

    <div class="separator"></div>

    
      
      <ul id="legHomeExercises">
       
      </ul>
    </div>
  </div>

 




  <script>
    const pushGymExercises = [
      { name: "Barbell Bench Press", target: "Chest", sets: "3 sets of 8-10 reps", image: "https://newlife.com.cy/wp-content/uploads/2019/11/00471301-Barbell-Incline-Bench-Press_Chest_360.gif", description: "A classic compound exercise for building chest, shoulders, and triceps." },
      { name: "Dumbbell Shoulder Press", target: "Shoulders", sets: "3 sets of 8-10 reps", image: "https://newlife.com.cy/wp-content/uploads/2019/12/22371301-Dumbbell-Seated-Shoulder-Press-female_Shoulders_720.gif", description: "Isolate and strengthen your shoulder muscles using dumbbells." },
      { name: "Up to down chest flys", target: "chest", sets: "3 sets of 8-10 reps", image:"https://www.inspireusafoundation.org/wp-content/uploads/2023/08/high-cable-fly.gif", description:" Exercise that primarily targets the pectoral muscles."},
      {name: "down to up chest flys", target: "chest", sets: "3 sets of 8-10 reps", image:"https://liftingfaq.com/wp-content/uploads/2024/02/low-high-cable-fly-exercise.gif", description:" Exercise that primarily targets the pectoral muscles."},
      {name: "triceps push down", target: "triceps", sets: "3 sets of 8-10 reps", image:"https://www.inspireusafoundation.org/wp-content/uploads/2023/03/straight-bar-tricep-pushdown.gif", description:" Uses a cable machine to train the tricep heads, with the medial and lateral heads mainly being targeted."},
      {name: "dips", target: "triceps and chest ", sets: "3 sets of 8-10 reps", image:"https://fitnessvolt.com/wp-content/uploads/2015/08/parallel-bar-dips.gif", description:"a bodyweight exercise that develops the triceps and other upper-body muscles."},
    ];

    const pushHomeExercises = [
      { name: "Push-ups", target: "Chest", sets: "3 sets of 10-15 reps", image: "https://homeworkouts.org/wp-content/uploads/anim-push-ups.gif", description: "A bodyweight exercise that targets the chest, shoulders, and triceps." },
      { name: "Dumbbell Lateral Raises", target: "Shoulders", sets: "3 sets of 12-15 reps", image: "https://cdn.shopify.com/s/files/1/0449/8453/3153/files/Dumbbell_Lateral_Raises_muscle_worked_600x600.gif?v=1698802254", description: "Focus on the lateral deltoids with controlled dumbbell raises." },
      { name: "Dumbbell chest flys", target: "pectoral muscles", sets: "3 sets of 12-15 reps", image: "https://homeworkouts.org/wp-content/uploads/anim-dumbbell-fly.gif", description: "A excercise that focuses primarly on chest and a bit less on biceps." },
      { name: "Triceps dips", target: "triceps and chest", sets: "3 sets of 12-15 reps", image: "https://fitliferegime.com/wp-content/uploads/2022/08/How-To-Do-Tricep-Dips.gif", description: "A excercise that focuses mostly on your triceps and chest." },
      { name: "Upperhead triceps", target: "triceps", sets: "3 sets of 12-15 reps", image: "https://newlife.com.cy/wp-content/uploads/2019/12/21881301-Dumbbell-Seated-Triceps-Extension_Upper-Arms_360.gif", description: "A excercise that focuses mostly on your triceps." },
      { name: "Dumbbell Shoulder Press", target: "Shoulders", sets: "3 sets of 8-10 reps", image: "https://newlife.com.cy/wp-content/uploads/2019/12/22371301-Dumbbell-Seated-Shoulder-Press-female_Shoulders_720.gif", description: "Isolate and strengthen your shoulder muscles using dumbbells." },
      
    ];

    const pullGymExercises = [
      { name: "Pull-ups", target: "Back", sets: "3 sets of 8-10 reps", image: "https://via.placeholder.com/300x200", description: "Strengthen your back and biceps with this bodyweight exercise." },
      { name: "Barbell Rows", target: "Back", sets: "3 sets of 8-10 reps", image: "https://via.placeholder.com/300x200", description: "Use a barbell to target the muscles in your upper back." },
      // Add more gym pull exercises
    ];

    const pullHomeExercises = [
      { name: "Bodyweight Rows", target: "Back", sets: "3 sets of 10-12 reps", image: "https://via.placeholder.com/300x200", description: "Perform rows using your body weight to engage your back muscles." },
      { name: "Dumbbell Bicep Curls", target: "Biceps", sets: "3 sets of 10-12 reps", image: "https://via.placeholder.com/300x200", description: "Isolate and build your biceps with controlled dumbbell curls." },
      // Add more home pull exercises
    ];

    const legGymExercises = [
      { name: "Barbell Squats", target: "Legs", sets: "4 sets of 8-10 reps", image: "https://via.placeholder.com/300x200", description: "The king of leg exercises, targeting quads, hamstrings, and glutes." },
      { name: "Deadlifts", target: "Legs", sets: "4 sets of 8-10 reps", image: "https://via.placeholder.com/300x200", description: "Engage your entire posterior chain with this powerful lift." },
      // Add more gym leg exercises
    ];

    const legHomeExercises = [
      { name: "Bodyweight Squats", target: "Legs", sets: "3 sets of 15-20 reps", image: "https://via.placeholder.com/300x200", description: "Build endurance and strength in your legs with bodyweight squats." },
      { name: "Lunges", target: "Legs", sets: "3 sets of 12-15 reps", image: "https://via.placeholder.com/300x200", description: "Step forward and lunge to target your quads and glutes." },
      // Add more home leg exercises
    ];

   

    function showPushExercises() {
      displayExercises(pushGymExercises, pushHomeExercises);
    }

    function showPullExercises() {
      displayExercises(pullGymExercises, pullHomeExercises);
    }

    function showLegExercises() {
      displayExercises(legGymExercises, legHomeExercises);
    }

    function displayExercises(gymExercises, homeExercises) {
      const gymList = document.createElement("ul");
      const homeList = document.createElement("ul");

      gymExercises.forEach(exercise => {
        const listItem = document.createElement("li");
        const exerciseLine = document.createElement("div");
        exerciseLine.classList.add("exercise-line");
        const exerciseImage = document.createElement("img");
        exerciseImage.src = exercise.image;
        const exerciseInfo = document.createElement("div");
        exerciseInfo.classList.add("exercise-info");
        exerciseInfo.innerHTML = `
          <strong>${exercise.name}</strong><br>
          <em>${exercise.target}</em><br>
          Sets: ${exercise.sets}<br>
          Description: ${exercise.description}
        `;
        exerciseLine.appendChild(exerciseImage);
        exerciseLine.appendChild(exerciseInfo);
        listItem.appendChild(exerciseLine);
        gymList.appendChild(listItem);
      });

      homeExercises.forEach(exercise => {
        const listItem = document.createElement("li");
        const exerciseLine = document.createElement("div");
        exerciseLine.classList.add("exercise-line");
        const exerciseImage = document.createElement("img");
        exerciseImage.src = exercise.image;
        const exerciseInfo = document.createElement("div");
        exerciseInfo.classList.add("exercise-info");
        exerciseInfo.innerHTML = `
          <strong>${exercise.name}</strong><br>
          <em>${exercise.target}</em><br>
          Sets: ${exercise.sets}<br>
          Description: ${exercise.description}
        `;
        exerciseLine.appendChild(exerciseImage);
        exerciseLine.appendChild(exerciseInfo);
        listItem.appendChild(exerciseLine);
        homeList.appendChild(listItem);
      });

      const pushGymExercisesContainer = document.getElementById("pushGymExercises");
      const pushHomeExercisesContainer = document.getElementById("pushHomeExercises");
      const pullGymExercisesContainer = document.getElementById("pullGymExercises");
      const pullHomeExercisesContainer = document.getElementById("pullHomeExercises");
      const legGymExercisesContainer = document.getElementById("legGymExercises");
      const legHomeExercisesContainer = document.getElementById("legHomeExercises");

      // Clear existing content
      pushGymExercisesContainer.innerHTML = "";
      pushHomeExercisesContainer.innerHTML = "";
      pullGymExercisesContainer.innerHTML = "";
      pullHomeExercisesContainer.innerHTML = "";
      legGymExercisesContainer.innerHTML = "";
      legHomeExercisesContainer.innerHTML = "";

      // Append new content
      pushGymExercisesContainer.appendChild(gymList);
      pushHomeExercisesContainer.appendChild(homeList);
    }

    // Show default exercises
    showPushExercises();
  </script>

</body>

</html>
