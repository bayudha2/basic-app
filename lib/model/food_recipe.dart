class MenuReceipDetail {
  String title;
  int time;
  int preparation;
  double rating;
  String views;
  String description;
  String direction;
  String imageAsset;
  List<String> ingridients;

  MenuReceipDetail({
    required this.title,
    required this.preparation,
    required this.time,
    required this.rating,
    required this.views,
    required this.description,
    required this.direction,
    required this.imageAsset,
    required this.ingridients,
  });
}

class MenuReceip {
  String cateogry;
  MenuReceipDetail menu;

  MenuReceip({required this.cateogry, required this.menu});
}

var menuReceipList = [
  // dinner
  MenuReceip(
      cateogry: 'dinner',
      menu: MenuReceipDetail(
          title: 'Classic Chicken Pot Pie',
          time: 30,
          preparation: 5,
          rating: 4.9,
          views: '150k',
          description:
              'While this classic comfort food is one that you can easily find pre-made in almost any grocery freezer aisle, we strongly believe that making your own chicken pot pie is more than worth it. This cozy meal represents the marriage of a flaky, buttery crust with chopped chicken, onions, carrots, and peas in a perfectly creamy sauce',
          direction:
              'Separately freeze flour and butter 30 minutes. In a large food processor, pulse flour, baking powder, and kosher salt until combined. Add butter and pulse until pea-sized and some slightly larger pieces form. With the motor running, slowly pour in 1/2 cup ice water, 1 tablespoon at a time, until dough just comes together and is moist but not wet and sticky (test by squeezing some with your fingers). Turn out dough onto a lightly floured surface. Form into 2 balls, then flatten into 2 discs (make sure there are no/minimal cracks). Cover with plastic wrap and refrigerate at least 30 minutes or up to 3 days.',
          imageAsset: 'images/chicken-pot-pie.jpeg',
          ingridients: [
            'medium yellow onion',
            'baking powder',
            'kosher salt',
            'unsalted butter',
            'cloves garlic',
            'heavy cream',
            'frozen peas'
          ])),
  MenuReceip(
      cateogry: 'dinner',
      menu: MenuReceipDetail(
          title: 'White Chicken Chili',
          time: 40,
          preparation: 10,
          rating: 4.7,
          views: '180k',
          description:
              'As a cozy weeknight dinner or an addition to your game day spread, chili is the comfort food staple we can’t get enough of. We’ve created our fair share of variations on the classic, but this white chicken chili is one of our all-time favorites',
          direction:
              'In a large pot over medium heat, heat oil. Add onion and jalapeño and cook, stirring, until softened, about 8 minutes. Add garlic, oregano, and cumin and cook, stirring, until fragrant, about 1 minute. Add chicken, broth, and chiles; season with salt and pepper. Bring to a boil, then reduce heat and simmer, uncovered, until chicken is tender and cooked through, 10 to 12 minutes. Transfer chicken to a plate and shred with 2 forks. Add beans to pot and bring to a simmer. Cook, smashing about one-quarter of beans with a wooden spoon, until slightly thickened, about 10 minutes. Add corn and shredded chicken and cook, stirring, until heated through, about 1 minute more. Remove from heat and stir in sour cream',
          imageAsset: 'images/white-chicken-chili.jpeg',
          ingridients: [
            'neutral oil',
            'medium yellow onion',
            'cloves garlic',
            'dried oregano',
            'ground cumin',
            'frozen corn',
            'sour cream'
          ])),
  MenuReceip(
      cateogry: 'dinner',
      menu: MenuReceipDetail(
          title: 'Stuffed Peppers',
          time: 50,
          preparation: 8,
          rating: 4.3,
          views: '100k',
          description:
              'Here at Delish, we’re big fans of stuffed peppers (and it’s no secret as to why). Strong enough to hold their shape, peppers are large enough to hold a decent amount of filling while taking to a variety of flavors—they\'re the perfect vessel for countless combinations and ingredients.',
          direction:
              'Preheat oven to 400°. In a small saucepan, prepare rice according to package instructions. Meanwhile, in a large skillet over medium heat, heat oil. Cook onion, stirring occasionally, until softened, about 7 minutes. Stir in garlic and tomato paste and cook, stirring, until fragrant, about 1 minute more. Add ground beef and cook, breaking up meat with a wooden spoon, until no longer pink, about 6 minutes. Drain excess fat. Stir in rice and diced tomatoes; season with oregano, salt, and pepper. Let simmer, stirring occasionally, until liquid has reduced slightly, about 5 minutes. Arrange peppers cut side up in a 13"x9" baking dish and drizzle with oil. Spoon beef mixture into each pepper. Top with cheese, then cover baking dish with foil',
          imageAsset: 'images/stuffed-peppers.jpeg',
          ingridients: [
            'brown rice',
            'virgin olive oil',
            'medium yellow onion',
            'cloves garlic',
            'tomato paste',
            'ground beef',
            'diced tomatoes',
            'bell peppers'
          ])),
  MenuReceip(
      cateogry: 'dinner',
      menu: MenuReceipDetail(
          title: 'Pizza Casserole',
          time: 80,
          preparation: 10,
          rating: 4,
          views: '80k',
          description:
              'Pizza casserole is pasta tossed with pizza sauce, sausage, mushrooms, and peppers, layered with mozzarella cheese, and baked in a casserole dish. We love using cavatappi pasta (or its cousin, cellentani) in this casserole, because its corkscrew shape is great for holding all the sausage and veggies in the sauce. If you can’t find it, try rotini, fusilli, or rigatoni',
          direction:
              'Preheat oven to 350°. Grease a 13"-by-9" glass baking dish with oil. Bring a large pot of water to a boil over high heat. Add pasta and 2 tablespoons salt and cook, stirring occasionally, until al dente, 7 to 9 minutes (pasta should still be slightly undercooked in the center). Drain pasta; set aside. Meanwhile, in a large skillet over medium heat, heat 1 tablespoon oil. Add sausage and cook, breaking into bite-size pieces, until browned and cooked through, 4 to 5 minutes. Transfer sausage to a medium bowl, leaving as much fat in skillet as possible. In same skillet over medium heat, combine mushrooms and 1 tablespoon oil; season with 1/2 teaspoon salt. Cook, tossing occasionally, until browned, 5 to 6 minutes. Transfer mushrooms to bowl with sausage.',
          imageAsset: 'images/pizzacasserole.jpeg',
          ingridients: [
            'virgin olive oil',
            'cavatappi pasta',
            'kosher salt',
            'Italian sausage',
            'cremini mushrooms',
            'small yellow onion',
            'cloves garlic',
            'dried oregano',
            'dried basil',
            'sliced pepperoni',
            'shredded mozzarella',
            'cans tomato sauce'
          ])),
  MenuReceip(
      cateogry: 'dinner',
      menu: MenuReceipDetail(
          title: 'Green Chile Chicken Skillet Enchiladas',
          time: 50,
          preparation: 15,
          rating: 5,
          views: '110k',
          description:
              'Craving homemade enchiladas and being in a hurry aren\'t really compatible since the classic Mexican dish requires many steps and a fair amount of time. Enter this green chile chicken skillet enchiladas recipe, a quick take on the dish that comes together in one skillet',
          direction:
              'Preheat oven to 350°. In a large skillet over medium-high heat, heat lard and oil. Add poblano chiles, onion, garlic, and 2 teaspoons salt. Cook, stirring often, until vegetables are softened and beginning to brown, 8 to 10 minutes. Add green chiles and stock, scraping up bits from bottom of skillet. Bring to a simmer and cook, stirring occasionally, until sauce has slightly reduced, 4 to 6 minutes. Transfer mixture to a blender; reserve skillet. Add cilantro to blender and blend until smooth, 30 seconds to 1 minute. Place a tortilla directly on gas burner over high heat. Toast, turning once, until edges are slightly charred, about 30 seconds. Transfer to a cutting board and repeat with remaining tortillas, stacking them on top of each other. Cut tortilla stack in half.',
          imageAsset: 'images/green-chile-chciken.jpeg',
          ingridients: [
            'unsalted butter',
            'neutral oil',
            'poblano chiles',
            'medium white onion',
            'cloves garlic',
            'diced green chiles',
            'sodium chicken stock',
            'cilantro leaves',
            'corn tortillas',
            'can black beans',
          ])),
  // breakfast
  MenuReceip(
      cateogry: 'breakfast',
      menu: MenuReceipDetail(
          title: 'Crescent Breakfast Squares',
          time: 60,
          preparation: 12,
          rating: 4.7,
          views: '85k',
          description:
              'We love ourselves a good crescent roll dough hack, and for good reason. The store-bought cans of dough are wildly versatile, so we’ve pretty much always got one or two kicking around our fridge just in case. It’s the well-known secret to some of our favorite year-round appetizers, like our ham and asparagus bundles or our cranberry brie bites, but it’s also integral to some of our favorite last-minute breakfasts too, like these breakfast squares.',
          direction:
              'Preheat oven to 375° and grease a baking sheet with cooking spray. In a large bowl, whisk together eggs and milk. In a large nonstick pan over medium heat, melt 1 tablespoon butter. When butter is foamy, reduce heat to low and add egg mixture. Cook, stirring often with a spatula, until eggs are just set. Season with salt and pepper and remove from heat. Unroll one can of crescents onto greased baking sheet and pinch seams together so it\'s a solid layer of pastry without gaps. Add a layer of ham then top with scrambled eggs, chives, and cheese. Unroll second crescent dough and place on top of cheese. Pinch together crescent sheets to seal.',
          imageAsset: 'images/crescent.jpeg',
          ingridients: [
            'large eggs',
            'Cooking spray',
            'milk',
            'butter',
            'deli ham',
            'slices cheddar',
            'poppy seeds',
            'sesame seeds',
            'minced onion',
            'dried garlic',
          ])),
  MenuReceip(
      cateogry: 'breakfast',
      menu: MenuReceipDetail(
          title: 'Chocolate Chip Banana Oatmeal Bars',
          time: 45,
          preparation: 10,
          rating: 5,
          views: '99k',
          description:
              'Sick of grabbing the same super-sweet, processed granola bars every morning? Studded with banana chunks and chocolate chips, these hearty oat bars will satisfy your breakfast cravings and sustain you through those long late morning meetings',
          direction:
              'Preheat oven to 350°. Grease a 13" x 9" metal baking pan with cooking spray and line with parchment, leaving an overhang on 2 long opposite sides. Peel bananas. In a medium bowl, mash 3 ripest bananas with a fork until smooth (you should have about 1 1/4 cups). Chop remaining banana into 1/4" pieces. In a large bowl, lightly whisk eggs until blended. Add brown sugar, oil, vanilla, baking soda, and salt and whisk until incorporated. Whisk in mashed banana until thoroughly combined, then switch to a rubber spatula and fold in oats and flour. Fold in 3/4 cup chips and chopped banana. Pour batter into prepared pan; smooth with spatula. Sprinkle with remaining 1/4 cup chips.',
          imageAsset: 'images/chocolate-chip.jpeg',
          ingridients: [
            'Cooking spray',
            'large ripe bananas',
            'packed light brown sugar',
            'large eggs',
            'vegetable oil',
            'pure vanilla extract',
            'baking soda',
            'kosher salt',
          ])),
  MenuReceip(
      cateogry: 'breakfast',
      menu: MenuReceipDetail(
          title: 'Egg & Hash Brown Casserole',
          time: 75,
          preparation: 20,
          rating: 5,
          views: '104k',
          description:
              'Listen, we love a big breakfast featuring all the usual suspects—fluffy scrambled eggs, crispy hash browns, a plate of breakfast sausage, and a pile of sautéed spinach for good measure. (Popeye would approve.) But it requires a lot of work, not to mention A LOT of dishes.',
          direction:
              'Preheat oven to 375º. Grease a 13"-by-9" baking dish with cooking spray. In a large nonstick skillet over medium-high heat, heat 1 tbsp. oil. Cook sausage, breaking up with a wooden spoon into small bits, until browned and cooked through, about 3 minutes. Drain any excess oil in skillet, then transfer sausage to a large bowl. Return skillet to medium heat and heat 1 tbsp. oil. Cook onion, bell pepper, a pinch of salt, and a pinch of black pepper, stirring occasionally, until veggies are softened and light golden, about 3 minutes. Add garlic and cook, stirring, until fragrant, about 1 minute. Add spinach by large handfuls, tossing and wilting in between each addition, until all spinach is incorporated and wilted, about 3 minutes more. Scrape vegetable mixture into bowl with sausage.',
          imageAsset: 'images/egg-and-hashbrown.jpeg',
          ingridients: [
            'Cooking spray',
            'virgin olive oil',
            'turkey breakfast sausage',
            'medium yellow onion',
            'medium red bell pepper',
            'cloves garlic',
            'baby spinach',
            'large eggs',
            'low-sodium chicken broth',
            'sour cream',
            'Dijon mustard',
            'hot sauce',
          ])),
  MenuReceip(
      cateogry: 'breakfast',
      menu: MenuReceipDetail(
          title: 'Bagels and Lox',
          time: 15,
          preparation: 5,
          rating: 5,
          views: '60k',
          description:
              'I have a thing for breakfast sandwiches (see my love story to the Bacon, Egg and Cheese) and as a Jew born in Queens, it’s hard not to get obsessive about a bagel and lox. Unlike many, I am not super opinionated or judgmental about toppings, spreads, etc',
          direction:
              'For the cream cheese: In a medium bowl fold together cream cheese, scallions, dill and lemon juice until fully combined. For the bagels: Spread schmear equally on each slice of bagel. Top with 2 slices of lox, tomato, cucumber, red onion and capers. Serve the bagels open face and top with some fresh dill.',
          imageAsset: 'images/bagelandlox.jpeg',
          ingridients: [
            'cream cheese',
            'scallions',
            'fresh dill,',
            'lemon juice',
            'bagels',
            'slices Lox',
            'schmear',
            'Thinly sliced tomato',
            'Thinly sliced cucumber',
            'Thinly sliced red onion',
            'tofu spread',
            'Fresh dill',
          ])),
  MenuReceip(
      cateogry: 'breakfast',
      menu: MenuReceipDetail(
          title: 'Chia Pudding',
          time: 125,
          preparation: 25,
          rating: 4.7,
          views: '80k',
          description:
              'Here at Delish, we love recipes that let us take it easy—chia pudding is a prime example. Chia seeds might sound intimidating, but in reality, they couldn\'t be easier to whip up into a delicious, customizable breakfast.',
          direction:
              'In a medium bowl, whisk milk, chia seeds, maple syrup, vanilla (if using), and salt. Cover and refrigerate until thickened, at least 2 hours or up to overnight. Serve with mix-ins and toppings of your choice.',
          imageAsset: 'images/chia-pudding.jpeg',
          ingridients: [
            'almond milk',
            'chia seeds',
            'pure maple syrup',
            'pure vanilla extract',
            'Pinch of kosher salt',
            'Sliced fruit',
            'granola',
          ])),
  // lunch
  MenuReceip(
      cateogry: 'lunch',
      menu: MenuReceipDetail(
          title: 'Mexican Torta',
          time: 40,
          rating: 4.5,
          preparation: 4,
          views: '78k',
          description:
              'Mexican tortas are one of the most delicious types of sandwiches. No surprise, since Mexican food tends to be crazy delicious across the board. Though tortas can be a pretty hearty meal on their own, a bowl of salsa or guacamole with tortilla chips would be welcome alongside.',
          direction:
              'In a shallow bowl, crush panko a few times with your hands to break into smaller pieces. In another shallow bowl, beat eggs to combine. Place flour in a third shallow bowl. Season chicken with 1/2 tsp. salt and 1/4 tsp. black pepper. Working one at a time, coat chicken in flour, shaking off excess. Dip chicken into egg, then into panko, pressing to adhere. Transfer to a plate. Into a large heavy pot, pour oil to a depth of 1/4"; heat over medium-high heat until shimmering. Fry 2 cutlets, turning halfway through, until chicken is cooked through and panko is golden brown, 2 to 3 minutes per side. Transfer chicken to a wire rack set over a rimmed baking sheet or paper-towel lined plate; season with salt. Repeat with remaining cutlets.',
          imageAsset: 'images/mexican-fried-chicken.jpeg',
          ingridients: [
            'panko bread crumbs',
            'large eggs',
            'unbleached all-purpose flour',
            'chicken cutlets',
            'Kosher salt',
            'telera',
            'bolillo',
            'black beans',
            'white onion',
            'queso fresco',
            'ripe small tomatoes',
            'large avocado',
            'mayonnaise',
          ])),
  MenuReceip(
      cateogry: 'lunch',
      menu: MenuReceipDetail(
          title: 'Spinach-Artichoke Flatbread',
          time: 30,
          preparation: 5,
          rating: 4,
          views: '60k',
          description:
              'Spinach and artichoke is one of our favorite flavor combinations, whether we’re enjoying them as a classic baked dip or paired together in a bite-size app. For this recipe, we’re turning it into an easy yet elegant dinner in the form of a flatbread pizza that’s simple enough for a weeknight dinner but impressive enough to serve to guests.',
          direction:
              'Preheat oven to 500°. In a medium skillet over medium-low heat, heat 3 tablespoons olive oil. Add garlic, 3 anchovies, and anchovy oil and cook, stirring occasionally, until garlic is caramelized, 5 to 6 minutes. Stir in oregano and red pepper, then transfer to a small bowl. In same skillet over medium heat, heat remaining 1/2 teaspoon olive oil. Cook spinach, stirring occasionally, until just wilted, 2 to 3 minutes. Transfer to a medium bowl. On a lightly floured surface, gently stretch dough with your fingertips. Lightly grease a baking sheet with oil, then place dough on sheet. Stretch dough to cover entire sheet. If dough doesn’t stretch completely, let rest 15 minutes and stretch again. Spread top of dough with garlic oil. Top with spinach, artichokes, ricotta, and Parmesan. Bake flatbread, rotating pan halfway through, until crust is golden brown and crispy, 15 to 17 minutes. Let cool slightly. Finely chop more anchovies and sprinkle over flatbread. Top with basil.',
          imageAsset: 'images/spinach-artichoke.jpeg',
          ingridients: [
            'extra-virgin olive oil',
            'cloves garlic',
            'can oil-packed anchovy fillets',
            'dried oregano',
            'crushed red pepper flakes',
            'baby spinach',
            'store-bought pizza dough',
            'marinated artichoke hearts',
            'ricotta',
            'finely grated Parmesan',
            'Fresh basil leaves',
          ])),
  MenuReceip(
      cateogry: 'lunch',
      menu: MenuReceipDetail(
          title: 'Orzo Pasta',
          time: 30,
          preparation: 5,
          rating: 4.2,
          views: '80k',
          description:
              'Serve as a side or all on its own on a bed of salad greens, this creamy orzo "risotto" is a more herbalicious version of cacio e pepe. The best part of this recipe: It all takes place in just one pot, which means more flavor and fewer dishes to wash.',
          direction:
              'In a large pot over medium heat, melt butter and oil. Add shallots, garlic, herbs, pepper flakes (if using), salt, black pepper, white pepper, and nutmeg, and stir until garlic is golden, about 2 minutes. Add orzo, 3 cups broth, and half-and-half. Stirring frequently, bring to a simmer and cook until pasta is al dente and liquid is mostly absorbed, about 6 minutes. Remove from heat and stir in cheeses ½ cup at a time until fully incorporated. Stir in lemon zest and juice, then gradually add remaining broth until creamy and desired consistency is reached. Top with more cheese and pepper flakes before serving with arugula.',
          imageAsset: 'images/orzo-pasta.jpeg',
          ingridients: [
            'butter',
            'extra-virgin olive oil',
            'small shallots',
            'cloves garlic',
            'finely chopped herbs',
            'red pepper flakes',
            'kosher salt',
            'freshly ground black pepper',
            'ground white pepper',
            'freshly grated nutmeg',
            'orzo',
            'low-sodium chicken broth',
            'freshly grated Parmesan',
            'lemon juice',
          ])),
  MenuReceip(
      cateogry: 'lunch',
      menu: MenuReceipDetail(
          title: 'Copycat Olive Garden Meatballs',
          time: 85,
          preparation: 15,
          rating: 4.4,
          views: '88k',
          description:
              'Aside from their signature breadsticks and their creamy zuppa toscana, one of Olive Garden’s most iconic dishes is their meatballs. Sauced in bright marinara and perched atop a glossy mound of spaghetti, they transform into a showstopping entrée that still manages to deliver those down-home comfort food vibes.',
          direction:
              'Place a rack in center of oven; preheat to 400°. Grease a large baking sheet with cooking spray. In a large bowl, mix eggs, bread crumbs, milk, Italian seasoning, salt, pepper, garlic powder, and onion powder with a rubber spatula until a wet paste forms. Using clean hands, mix ground beef into egg mixture until thoroughly combined. Roll into 12 (1 1/2") balls, about 65 grams each, and arrange on prepared sheet. Bake meatballs until browned and cooked through (an instant-read thermometer inserted into the center should register 160°), 12 to 15 minutes.',
          imageAsset: 'images/copycat-olive-garden-meatballs.jpeg',
          ingridients: [
            'Cooking spray',
            'large eggs',
            'plain dried bread crumbs',
            'whole milk',
            'Italian seasoning',
            'kosher salt',
            'freshly ground black pepper',
            'garlic powder',
            'onion powder',
            'ground beef',
            'extra-virgin olive oil',
            'large yellow onion',
            'tomato paste',
            'cloves garlic',
            'dried basil',
            'dried oregano',
            'granulated sugar',
            'spaghetti',
          ])),
  MenuReceip(
      cateogry: 'lunch',
      menu: MenuReceipDetail(
          title: 'Rainbow Roll',
          time: 90,
          preparation: 12,
          rating: 4.9,
          views: '78k',
          description:
              'Get out your chopsticks, it\'s time for homemade sushi night at your house. With a couple rainbow rolls, Philadelphia rolls, shrimp tempura rolls, and dragon rolls served on a platter with dishes of soy sauce, it\'s easy to make your kitchen feel like a Japanese restaurant.',
          direction:
              'In a medium bowl, cover rice with cold water. Swirl rice with your fingers to release starches, then drain. Repeat process about 3 more times until water is mostly clear. Fill bowl with cold water again and soak rice 30 minutes before draining well. In a rice cooker or medium saucepan, combine soaked rice, ⅔ cup water, and kombu, if using. If using rice cooker, cook on sushi rice or white rice setting. If using saucepan, bring to a boil over high heat. Cover, reduce heat to low, and simmer until rice is cooked through, 12 to 15 minutes. Remove from heat and let steam, covered, until rice is swollen and fluffy, about 10 minutes. Discard kombu. Spread rice on a small baking sheet or 13"-by-9" baking dish. In a small bowl, whisk vinegar, sugar, and salt until sugar is dissolved, then drizzle over rice. Using a wooden spoon or rice paddle, quickly fold vinegar mixture into rice. (Don’t mix too much or rice will get sticky!) Smooth rice in an even layer and let cool about 30 minutes.',
          imageAsset: 'images/rainbow-roll.jpeg',
          ingridients: [
            'sushi rice',
            'water',
            'piece kombu',
            'unseasoned rice vinegar',
            'sugar',
            'Kosher salt',
            'sheets nori',
            'imitation crab sticks',
            'Persian cucumber',
            'avocado',
            'slices thinly sliced raw salmon',
            'slices thinly sliced raw tuna',
            'slices thinly sliced raw yellowtail',
            'Soy sauce',
            'wasabi',
            'pickled ginger',
          ])),
];
