$(document).on("turbo:load", function () {
  $(".sm-header__menu").on("click", function () {
    const isExpanded = $(".sm-sidebar").hasClass("sm-sidebar--expanded");

    if (isExpanded) {
      $(".sm-sidebar").removeClass("sm-sidebar--expanded");
      $(".sm-content").removeClass("sm-content--expanded");
      $(".sm-header__menu i").removeClass("fa-xmark").addClass("fa-bars");
    } else {
      $(".sm-sidebar").addClass("sm-sidebar--expanded");
      $(".sm-content").addClass("sm-content--expanded");
      $(".sm-header__menu i").removeClass("fa-bars").addClass("fa-xmark");
    }
  });

  $(".sm-sidebar__close").on("click", function () {
    $(".sm-sidebar").removeClass("sm-sidebar--expanded");
    $(".sm-content").removeClass("sm-content--expanded");
    $(".sm-header__menu i").removeClass("fa-xmark").addClass("fa-bars");
  });

  $(".dropdown-menu").on("click.bs.dropdown", function (e) {
    e.stopPropagation();
    e.preventDefault();
  });

  $(".sm-header__search .form-control").on("focus", function () {
    $(".sm-header__search__response").show();
  });

  $(".sm-header__search .form-control").on("blur", function () {
    $(".sm-header__search__response").hide();
  });
});
