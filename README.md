# CW_CST1340
Joan Martha Acom- M01081319
Isaac Mujuni Bagenda- MO1O69186
Grace Benita Nalubwama- M01083273

## Joan
    I imported my social media icons from https://cdnjs.com/libraries/font-awesome

    I also removed the <p> tags used in the initial code because the divs were inside the p tags and were causing some issues with the layout since <p> tags can only take text.

    Also the floats were child elements in the <div> tags which removed the normal flow causing the <div> tags to not register height or width and my footer ended up overlapping the entire page. So i wrapped the floating elements fully in the div tag fix-float with after psuedo element.This allowed the divs to exist and take up space that is registered by other content.

### sticky footer
    I got the idea from https://prismic.io/blog/css-sticky-footers

    By setting html, body to height: 100% and margin: 0, the body is filled and has no gaps. flex-direction: column; ensures that all the body's content is stacked vertically from top to bottom. Giving <main> flex: 1 makes it expand to fill any leftover space, so even if the content is short, <main> stretches and pushes the footer to the bottom. This ensures the footer always stays at the bottom without overlapping.

    I see it disorganized  the format a bit though, we just have to agree to use flexbox throughout to make it easier. 

### carousel
    I added the carousel using some css, i created 3 classes stacked inside each other all within the main tags. With carousel>infinite-scroll>cards, this way I could handle all the elements with sizing and scaling effectively. I created a bunch of cards with div tags and used css background color for visibility, I then duplicated the infinite_scroll class since I would be looping it. Then in css rounded the corners with border radius and gave suitable size for cards, the infinite-scroll class was displayed with flex to have the cards all take up space in the same 1 row. I added gaps between each card elements within infinite scroll, then added some padding to the right so that there was space between the original class and duplicated class. To accomodate the long row of cards i used overflow-x:auto, on the x axis from within the carousel class. then hid the scrollbar because i wanted it to be "automated". Finally created keyframe animation called move to allow the cards to move from right to left. 
    I got reference from Reference: https://www.youtube.com/watch?v=KD1Yo8a_Qis&t=1s*/

    And then i put the animation inside the infinite scroll class to enable all it's elements aka the cards to follow the co-ordinates. Then i used some images and put them inside the cards, ensuring that they didnt spill out and took the cards shape as seen in .cards omg{css}.

    I did find an issue as the cards would glitch and delay to show again at the start of the loop in the right corner, so i just added more cards to fill out the space so that the process looked seemless.
