$ ->
  $("#load_more_images").click ->
    # TODO get max id on the page and pass it to fetch()
    Images.fetch()

  window.Images =
    container: $(".images")

    fetch: ->
      # TODO pass in a max id parameter to /images
      max_id = $('img:last').data('image_id')
      $.get "images/?max_id=#{max_id}", (data) =>
        console.log data[0].images.low_resolution.url
        console.log max_id
        @display data

    display: (images) ->
      _.each images, (image) =>
        src = image.images.low_resolution.url
        image_id = image.id.split("_")[0]
        img = $("<img src=#{src} data-image_id=#{image_id} />")
        $(@container).append img