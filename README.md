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
