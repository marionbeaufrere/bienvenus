import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
import { changeToActive } from '../tasks/show_tasks';

if ( document.querySelector(".wrap-show-task") ) {
  changeToActive();
};

import { intializeButton } from '../components/initialize';
intializeButton();

import { hideNextButton } from '../pages/signup';

import { getEmail, getNickname, getPhoto } from '../components/crisp';
if (document.getElementById("user-email-crisp")) {
  getEmail();
  getNickname();
  getPhoto();
};

import { sendWelcomeMessage } from '../components/crisp';
if (document.getElementById("id-for-chat-welcome")) {
  sendWelcomeMessage();
};

import { taskToggleArrow } from '../components/subtask_arrow';
if (document.querySelectorAll("edit-user-btn")) {
  taskToggleArrow();
};

import { hidePreviousButton } from '../pages/signup';
// import { validateForm } from '../pages/signup';
import { sweetAlertReturn } from '../tasks/sweetalert';
sweetAlertReturn();

import { userToggleEdit } from '../components/user_edit';
if ( document.getElementById('edit-user-btn') ) {
  userToggleEdit();
};

//// JS for onboarding

(function() {
  $(document).ready(function() {
    var walkthrough;
    walkthrough = {
      index: 0,
      nextScreen: function() {
        if (this.index < this.indexMax()) {
          this.index++;
          return this.updateScreen();
        }
      },
      prevScreen: function() {
        if (this.index > 0) {
          this.index--;
          return this.updateScreen();
        }
      },
      updateScreen: function() {
        this.reset();
        this.goTo(this.index);
        return this.setBtns();
      },
      setBtns: function() {
        var $lastBtn, $nextBtn, $prevBtn;
        $nextBtn = $('.next-screen');
        $prevBtn = $('.prev-screen');
        $lastBtn = $('.finish');
        if (walkthrough.index === walkthrough.indexMax()) {
          $nextBtn.prop('disabled', true);
          $prevBtn.prop('disabled', false);
          return $lastBtn.addClass('active').prop('disabled', false);
        } else if (walkthrough.index === 0) {
          $nextBtn.prop('disabled', false);
          $prevBtn.prop('disabled', true);
          return $lastBtn.removeClass('active').prop('disabled', true);
        } else {
          $nextBtn.prop('disabled', false);
          $prevBtn.prop('disabled', false);
          return $lastBtn.removeClass('active').prop('disabled', true);
        }
      },
      goTo: function(index) {
        $('.screen').eq(index).addClass('active');
        return $('.dot').eq(index).addClass('active');
      },
      reset: function() {
        return $('.screen, .dot').removeClass('active');
      },
      indexMax: function() {
        return $('.screen').length - 1;
      },
      closeModal: function() {
        $('.walkthrough, .shade').removeClass('reveal');
        return setTimeout((() => {
          $('.walkthrough, .shade').removeClass('show');
          this.index = 0;
          return this.updateScreen();
        }), 200);
      },
      openModal: function() {
        $('.walkthrough, .shade').addClass('show');
        setTimeout((() => {
          return $('.walkthrough, .shade').addClass('reveal');
        }), 200);
        return this.updateScreen();
      }
    };
    $('.next-screen').click(function() {
      return walkthrough.nextScreen();
    });
    $('.prev-screen').click(function() {
      return walkthrough.prevScreen();
    });
    $('.close').click(function() {
      return walkthrough.closeModal();
    });
    $('.open-walkthrough').click(function() {
      return walkthrough.openModal();
    });
    walkthrough.openModal();

    // Optionally use arrow keys to navigate walkthrough
    return $(document).keydown(function(e) {
      switch (e.which) {
        case 37:
          // left
          walkthrough.prevScreen();
          break;
        case 38:
          // up
          walkthrough.openModal();
          break;
        case 39:
          // right
          walkthrough.nextScreen();
          break;
        case 40:
          // down
          walkthrough.closeModal();
          break;
        default:
          return;
      }
      e.preventDefault();
    });
  });

}).call(this);



/*

dependencies:

//cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js
//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js
//cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js

*/

$('.carousel').carousel({
  interval: false
});
