(function () {
  var $div = $("#gallery a"); // Store all images
  var $buttons = $("#buttons"); // Store buttons element
  var tagged = {}; // Create tagged object

  $div.each(function () {
    // Loop through images and
    var a = this; // Store img in variable
    var tags = $(this).data("tags"); // Get this element's tags

    if (tags) {
      // If the element had tags
      tags.split(",").forEach(function (tagName) {
        // Split at comma and

        if (tagged[tagName] == null) {
          // If object doesn't have tag
          tagged[tagName] = []; // Add empty array to object
        }
        tagged[tagName].push(a); // Add the image to the array
      });
    }
  });

  $("<button/>", {
    // Create empty button
    text: "全部", // Add text 'show all'
    class: "active", // Make it active
    click: function () {
      // Add onclick handler to
      $(this) // Get the clicked on button
        .addClass("active") // Add the class of active
        .siblings() // Get its siblings
        .removeClass("active"); // Remove active from siblings
      $div.hide().fadeIn(100);
      $(".date-list").show().fadeIn(100); // Show all images
      $(".list").show().fadeIn(100);
      $("#1m16").hide();
      return false;
    },
  }).appendTo($buttons); // Add to buttons

  $.each(tagged, function (tagName) {
    // For each tag name
    $("<button/>", {
      // Create empty button
      //text: tagName + ' (' + tagged[tagName].length + ')', // Add tag name(original)
      text: tagName, // Add tag name
      click: function () {
        // Add click handler
        $(this) // The button clicked on
          .addClass("active") // Make clicked item active
          .siblings() // Get its siblings
          .removeClass("active"); // Remove active from siblings
        $div // With all of the images
          .hide() // Hide them
          .filter(tagged[tagName]) // Find ones with this tag
          .fadeIn(100);
        // Show just those images
        $div.each(function () {
          if ($(this).css("display") == "none") {
            $(this).parent().parent().hide();
          } else {
            $(this).parent().parent().show().fadeIn(100);
          }
        });
        $(".date-list").each(function () {
          var i = 0;
          $(this)
            .find(".list")
            .each(function () {
              if ($(this).css("display") != "none") {
                i = 1;
              }
            });
          if (i != 1) {
            $(this).hide();
          } else {
            $(this).show().fadeIn(100);
          }
        });
        $("#2m03").hide();
        return false;
      },
    }).appendTo($buttons); // Add to the buttons
  });
})();
