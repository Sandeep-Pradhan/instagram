(function () {
  $(function () {
    if ($(".pagination").length && $(".posts").length) {
      $(window).scroll(function () {
        var url;
        url = $(".pagination .next_page").attr("href");
        if (
          url &&
          $(window).scrollTop() > $(document).height() - $(window).height() - 50
        ) {
          $(".pagination").text("Loading more posts...");
          return $.getScript(url);
        }
      });
      return $(window).scroll();
    }
  });
}.call(this));
