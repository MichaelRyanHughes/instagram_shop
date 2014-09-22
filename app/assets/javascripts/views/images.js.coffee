$ ->
  $("#load_more_images").click ->
    Images.fetch()

  window.Images =
    container: $(".images")

    fetch: -> #retrieving the img html element
      # TODO pass in a max id parameter to /images
      max_id = $('img:last').data('image_id')
      $.get "images/?max_id=#{max_id}", (response) =>
        console.log('about to build image url')
        console.log response[0].images.low_resolution.url
        console.log ('  image url built')
        console.log max_id
        @display(response)

    display: (images) -> #building the img html element
      console.log('display function is hit')
      _.each images, (image) =>
        console.log(' image builder starts') 
        src = image.images.low_resolution.url
        image_id = image.id.split("_")[0]
        console.log(' image ids are built')
        #href = '/orders/new?instagram_id=#{image.id}'
        #img = $("<div class='thumbnail'><img src=#{src} data-image_id=#{image_id} /><a class='purchase' href= #{href}>buy print</a></div>")
        img = $("<div class='thumbnail'><img src=#{src} data-image_id=#{image_id} /><a class='purchase' href='/orders/new?instagram_id=#{image.id}'>buy 12x12 print</a></div>")
        $(@container).append img
        console.log(' image is added to div class thumbnail')


#<div class="thumbnail">
  #<img alt="10546968 1510840895816430 1521851368 a" data-image_id="778315848644424612" src="http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10546968_1510840895816430_1521851368_a.jpg">
  #<a class="purchase" href="http://localhost:3000/orders/new?instagram_id=778315848644424612_234675123">buy print</a>
  #<div class="zoom">⚲</div>
#</div>

#<div class="thumbnail">
  #<img src="http://scontent-b.cdninstagram.com/hphotos-xpf1/outbound-distilleryimage10/t0.0-17/OBPTH/3d39abc01fa611e2af9022000a1f9a23_6.jpg" data-image_id="310889695246676650">
#</div>


