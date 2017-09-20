# Nozama - Back End API

<p align="center">
  <b>Team Project By: </b><br><br>
  <a href="https://github.com/Aimeelr08">Aimee Ramirez</a> |
  <a href="https://github.com/ashtrull">Ash Trull</a> |
  <a href="https://github.com/cmigz">Christian Migncca</a> |
  <a href="https://github.com/wjbritton">Will Britton</a>
  <br><br>
</p>

## Introduction

Welcome to the Back End repository for our third project with GA, our team project.  We all learned quite a lot throught the process.  It was a great team effort and we look forward to continue working to really polish it up.

Our prompt was to build Nozama, a site similar to Amazon.  We decided to act as though we were amazon rolling our a new food shopping piece of their site since they accquired Whole Foods.  We named it Peach.

## Deployed Links

- Deployed API Link: https://limitless-journey-76568.herokuapp.com/

- Front End Client Deployed: https://wdi-team-project.github.io/nozama-client/

- [Front-end Repo](https://github.com/wdi-team-project/nozama-client)

## Routes

|          Action          | Method |       URL       | Controller Action |
|:------------------------:|:------:|:---------------:|:-----------------:|
|       User Sign Up       |  POST  |     /sign-up    |    users#signup   |
|       User Sign In       |  POST  |     /sign-in    |    users#signin   |
|       User Sign Out      | DELETE |  /sign-out/:id  |   users#signout   |
|    Add Product to Cart   |  PATCH |    /users/:id   |  users#addproduct |
| Empty Products From Cart |  PATCH | /users/:id/cart |  users#emptyCart  |
|      Get User's Cart     |   GET  |    /users/:id   |   users#getCart   |
|     Get All Products     |   GET  |    /products    |   products#index  |
|     Create a Product     |  POST  |    /products    |  products#create  |
