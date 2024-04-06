<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cutting Diet Plan</title>
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
    .container {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      padding: 20px;
    }
    .section {
      flex: 1;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
      overflow: hidden;
      position: relative;
      transition: transform 0.3s ease-in-out;
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
    .food-item {
      display: flex;
      align-items: center;
      justify-content: center; /* Center the image */
      overflow: hidden;
      border-radius: 10px;
    }
    .food-item img {
      width: 300px;
      height: 300px;
      object-fit: cover;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
      border-bottom-left-radius: 10px; /* Centered image with rounded corners */
      border-bottom-right-radius: 10px;
    }
    .food-info {
      padding: 15px;
      background-color: #f8f8f8;
      border-bottom-left-radius: 10px;
      border-bottom-right-radius: 10px;
    }
    .food-info strong {
      margin-left:160px;
      font-size: 25px;
      color: #333;
    }
    .food-info p {
      font-size: 14px;
      color: #555;
      margin-top: 10px;
    }
    .macros {
      margin-top: 20px;
      
    }
    .macro-item {
      display: flex;
      justify-content: space-between;
      margin-bottom: 10px;
      font-size: 17px;
      color: #777;
    }

    
  </style>
</head>
<body>

<header>
  <h1>Cutting Diet Plan</h1>
</header>

<div class="container">
  <div class="section">
    <h2>Veg</h2>
    <ul>
      <li class="food-item">
        <img src="https://www.health.com/thmb/xywLvNG9LxmoYzw5ISpfyj0XxJc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1388575654-0be79949cbe949f1a1ce81086557d255.jpg" alt="Leafy Greens">
        <div class="food-info">
          <strong>Leafy Greens</strong>
          <p>Leafy greens like kale and spinach are low in calories and high in vitamins, minerals, and antioxidants. They also provide fiber for digestive health.</p>
        </div>
      </li>
      <li class="food-item">
        <img src="https://images.immediate.co.uk/production/volatile/sites/30/2022/07/Broccoli-78ec54e.jpg?quality=90&resize=556,505" alt="Broccoli">
        <div class="food-info">
          <strong>Broccoli</strong>
          <p>Broccoli is rich in vitamins C, K, and folate. It also provides fiber and antioxidants, supporting overall health.</p>
        </div>
      </li>
      <li class="food-item">
        <img src="https://images.immediate.co.uk/production/volatile/sites/30/2020/08/cauliflower2-copy-3ab827f.jpg?quality=90&resize=512,465" alt="Cauliflower">
        <div class="food-info">
          <strong>Cauliflower</strong>
          <p>Cauliflower is low in calories and high in fiber. It also provides vitamins C and K, as well as several B-vitamins.</p>
        </div>
      </li>
      <li class="food-item">
        <img src="https://www.almanac.com/sites/default/files/styles/or/public/image_nodes/bell_peppers_dleonis_gettyimages.jpg?itok=CQCGWkcY" alt="Bell Peppers">
        <div class="food-info">
          <strong>Bell Peppers</strong>
          <p>Bell peppers are rich in vitamins A and C. They also provide fiber and various antioxidants that promote overall health.</p>
        </div>
      </li>
      <!-- Add more veg food items here -->
    </ul>
    <div class="macros">
      <h3><b>Macros (per 100g)</b></h3>
      <div class="macro-item">
        <span><b>Leafy Greens</b></span>
        <span><b>Protein: 2.9g, Carbs: 5.6g, Fat: 0.5g</b></span>
      </div>
      <div class="macro-item">
        <span><b>Broccoli</b></span>
        <span><b>Protein: 2.8g, Carbs: 11.2g, Fat: 0.6g</b></span>
      </div>
      <div class="macro-item">
        <span><b>Cauliflower</b></span>
        <span><b>Protein: 1.9g, Carbs: 4.1g, Fat: 0.3g</b></span>
      </div>
      <div class="macro-item">
        <span><b>Bell Peppers</b></span>
        <span><b>Protein: 0.9g, Carbs: 6.3g, Fat: 0.2g</b></span>
      </div>
      <!-- Add more macros for veg items here -->
    </div>
  </div>

  <div class="section">
    <h2>Non-Veg</h2>
    <ul>
      <li class="food-item">
        <img src="https://hips.hearstapps.com/hmg-prod/images/grilled-chicken-horizontal-1532030541.jpg?crop=0.615xw:0.923xh;0.176xw,0.0457xh&resize=1200:*" alt="Grilled Chicken Breast">
        <div class="food-info">
          <strong>Grilled Chicken Breast</strong>
          <p>Grilled chicken breast is low in fat and calories but high in protein, making it an excellent choice for maintaining muscle mass while cutting calories.</p>
        </div>
      </li>
      <li class="food-item">
        <img src="https://bclivespotprawns.com/cdn/shop/articles/visual_farmed_versus_wild_salmon_1200x630.jpg?v=1665583102" alt="Salmon">
        <div class="food-info">
          <strong>Salmon</strong>
          <p>Salmon is a fatty fish that provides omega-3 fatty acids, high-quality protein, and a variety of vitamins and minerals.</p>
        </div>
      </li>
      <li class="food-item">
        <img src="https://whitneybond.com/wp-content/uploads/2021/06/steak-marinade-13.jpg" alt="Beef Steak">
        <div class="food-info">
          <strong>Beef Steak</strong>
          <p>Beef steak is a rich source of protein, iron, zinc, and several B-vitamins essential for overall health and muscle function.</p>
        </div>
      </li>
      <li class="food-item">
        <img src="https://www.allrecipes.com/thmb/0VXMwCY9RVNrNvWcF_9v0iZpNqA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/JF_241160_CreamyCottageCheeseScrambled_4x3_12902-619d00dc88594ea9b8ed884a108db16d.jpg" alt="Eggs">
        <div class="food-info">
          <strong>Eggs</strong>
          <p>Eggs are a complete protein source, containing all essential amino acids. They also provide various vitamins and minerals.</p>
        </div>
      </li>
      <!-- Add more non-veg food items here -->
    </ul>
    <div class="macros">
      <h3><b>Macros (per 100g)</b></h3>
      <div class="macro-item">
        <span><b>Grilled Chicken Breast</b></span>
        <span><b>Protein: 31g, Carbs: 0g, Fat: 3.6g</b></span>
      </div>
      <div class="macro-item">
        <span><b>Salmon</b></span>
        <span><b>Protein: 25g, Carbs: 0g, Fat: 10.4g</b></span>
      </div>
      <div class="macro-item">
        <span><b>Beef Steak</b></span>
        <span><b>Protein: 26g, Carbs: 0g, Fat: 17.2g</b></span>
      </div>
      <div class="macro-item">
        <span><b>Eggs</b></span>
        <span><b>Protein: 13g, Carbs: 1.1g, Fat: 11g</b></span>
      </div>
      <!-- Add more macros for non-veg items here -->
    </div>
  </div>
</div>

</body>
</html>
