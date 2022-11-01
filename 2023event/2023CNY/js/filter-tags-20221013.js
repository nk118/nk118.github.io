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
    //class: 'active',                               // Make it active
    click: function () {
      // Add onclick handler to
      $(this) // Get the clicked on button
        .addClass("active") // Add the class of active
        .siblings() // Get its siblings
        .removeClass("active"); // Remove active from siblings
      $div.hide();
      $(".date-list").show(); // Show all images
      $(".list").show();
      $div.show();
      $("#2m03").hide();
      return false;
    },
  }).appendTo($buttons); // Add to buttons

  $.each(tagged, function (tagName) {
    // For each tag name
    var a = "";
    if (tagName == "台灣") {
      a = "active";
      $div // With all of the images
        .hide() // Hide them
        .filter(tagged[tagName]) // Find ones with this tag
        .show();
      $div.each(function () {
        if ($(this).css("display") == "none") {
          $(this).parent().parent().hide();
        } else {
          $(this).parent().parent().show();
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
          $(this).show();
        }
      });
      $("#2m03").hide();
    }
    $("<button/>", {
      // Create empty button
      //text: tagName + ' (' + tagged[tagName].length + ')', // Add tag name(original)
      text: tagName, // Add tag name
      class: a,
      click: function () {
        // Add click handler
        $(this) // The button clicked on
          .addClass("active") // Make clicked item active
          .siblings() // Get its siblings
          .removeClass("active"); // Remove active from siblings

        $div // With all of the images
          .hide() // Hide them
          .filter(tagged[tagName]) // Find ones with this tag
          .show();
        // Show just those images
        $div.each(function () {
          if ($(this).css("display") == "none") {
            $(this).parent().parent().hide();
          } else {
            $(this).parent().parent().show();
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
            $(this).show();
          }
        });
        $("#2m03").hide();
        return false;
      },
    }).appendTo($buttons); // Add to the buttons
  });
})();
