# Instagram clone
## Description of the app
Instagram is a social media site to share photos.

- A user must create a profile to interact with the app. The profile may be public or private.

- A Post may contain images, plus a caption. Images are restricted to image types using [activestorage validator](https://github.com/aki77/activestorage-validator), which also limits image size to 5 MB. 

- Users may like a post, including their own. Likes are indicated by the count next to the heart. <!--  A user may also double-click on a post to like / unlike it -->

- Users may also comment on their posts or others that are public, or by users that they follow, if comments are allowed. These comments cannot be edited.

- Users may follow others, and users are suggested. Currently, the suggestions are just other users not currently followed. Public profiles automattically accept the follow request, but private profiles have the option to accept or reject the request.

- A count of comments and likes is kept.

Post defaults: Allow comments and show likes. 

Stories and messaging are not implemented.

## Tech stack:

Ruby (3.1.2) on Rails (7.0.4)

Initially using a sqlite3 db

Auth: Devise

Styling: Bootstrap 5.2

Image upload: [Filepond](https://pqina.nl/filepond/)



This was originally built to practice rails 7. I followed a [code-along](https://www.udemy.com/course/building-instagram-from-scratch-using-ruby-on-rails-7/) by [MustaCode](mostafanabil198@gmail.com). I plan to redo the frontend in React for comparison, and add in testing. I've cleaned up a bit of the styling. 

### Add in later
- filePond also crops images
- ability to edit comments
- testing
- clean up code

### To download this repo:

`git clone git@github.com:laurieroy/rails-ig-clone.git`

### To create the initial databases run:

`rails db:setup`

### To run app on the dev server:

`rails s`







