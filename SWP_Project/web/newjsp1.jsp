<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-pUA-Compatible" content="ie=edge" />
    <title>Star Rating in HTML CSS & JavaScript</title>
    <link rel="stylesheet" href="./css/style_1.css" />
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
   <script src="js/main_1.js" defer></script>
   <style>
/*       .rating {
    display: flex;
    flex-direction: row-reverse;
}

.rating input {
    display: none;
}

.rating label {
    cursor: pointer;
    width: 26px;
    height: 26px;
    background-image: url('path/to/star-image.png');
    background-size: cover;
}

.rating input:checked + label {
    background-image: url('path/to/star-filled-image.png');
}*/
   </style>
  </head>
  <body>
    <div class="rating">
    <input type="radio" id="star5" name="rating" value="5" />
    <label for="star5"></label>
    <input type="radio" id="star4" name="rating" value="4" />
    <label for="star4"></label>
    <input type="radio" id="star3" name="rating" value="3" />
    <label for="star3"></label>
    <input type="radio" id="star2" name="rating" value="2" />
    <label for="star2"></label>
    <input type="radio" id="star1" name="rating" value="1" />
    <label for="star1"></label>
</div>
  </body>
</html>
