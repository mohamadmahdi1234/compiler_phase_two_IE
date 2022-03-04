
<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
# compiler_phase2
# mohammad mahdi noori
# 98243068
<!-- PROJECT LOGO -->
<br />
<div>
  <p>
    <br />
    <a href="https://github.com/mohamadmahdi1234/compiler_phase_two_IE">View Demo</a>
    ·
    <a href="https://github.com/mohamadmahdi1234/compiler_phase_two_IE/issues">Report Bug</a>
    ·
    <a href="https://github.com/mohamadmahdi1234/compiler_phase_two_IE/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#JAR_Files">Installation</a></li>
      </ul>
    </li>
    <li><a href="#RUN_TESTS">Run Tests</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project


In this project we implement two phase of decaf compiler .

First phase is Lexical analysis and It takes modified source code from language preprocessors that are written in the form of sentences.

The lexical analyzer breaks these syntaxes into a series of tokens, by removing any whitespace or comments in the source code.

If the lexical analyzer finds a token invalid, it generates an error.

Also In the first phase we have Preprocessor which handle DEFINE macro before breaks  syntaxes into a series of tokens.

In the second phase we need to Parsing code .

Parsing or (syntax analysis) is the process of analyzing text containing a sequence of tokens to determine its grammatical structure with respect to grammar.

In this project we can give the decaf code as an input and in the last if syntax of code was true we get series of tokens else we get syntax error.

<p align="right">(<a href="#top">back to top</a>)</p>



## Built With

This section should list any major frameworks/libraries used to bootstrap your project. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.

* [java](https://www.java.com/en/)
* [Jflex](https://www.jflex.de)
* [CUP](https://www.cs.princeton.edu/~appel/modern/java/CUP/manual.html)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
follow these simple example steps.

## JAR_Files

_we have two JAR files in src/compiler directory , one of them is jflex-full-1.8.2.jar and another is java-cup-11b.jar ._
### compile jflex file (convert to java file)
1. First in Terminal you should go to src/compiler directory
2. you should use command like this for go to directory
   ```sh
    cd src/compiler
   ```
3. then for compile you should use this command
   ```sh
   java -jar jflex-full-1.8.2.jar Scanner_Jflex.flex

   ```
### compile CUP file 


1. First in Terminal you should go to src/compiler directory
2. you should use command like this for go to directory
   ```sh
    cd src/compiler
   ```
3. then for compile you should use this command
   ```sh
   java -jar java-cup-11b.jar Parser.cup

   ```

<p align="right">(<a href="#top">back to top</a>)</p>

## RUN_TESTS
For run and use this project you should create new text file and write your decaf code in that.
then you should copy that text file's address .

open the project and go to Testing.java in src/compiler directory

then in line 9 paste that copied address in the file methode argument

now run Testing.java .

you can see the result in your IDE Run console.

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the GNU General Public License v3.0 License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

name :Mohammad mahdi noori 

email : <mohamadnoori123@gmail.com>

Project Link: [Link](https://github.com/mohamadmahdi1234/compiler_phase_two_IE)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Pages](https://pages.github.com)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/mohamadmahdi1234/compiler_phase_two_IE.svg?style=for-the-badge
[contributors-url]: https://github.com/mohamadmahdi1234/compiler_phase_two_IE/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/mohamadmahdi1234/compiler_phase_two_IE.svg?style=for-the-badge
[forks-url]: https://github.com/mohamadmahdi1234/compiler_phase_two_IE/network/members
[stars-shield]: https://img.shields.io/github/stars/mohamadmahdi1234/compiler_phase_two_IE.svg?style=for-the-badge
[stars-url]: https://github.com/mohamadmahdi1234/compiler_phase_two_IE/stargazers
[issues-shield]: https://img.shields.io/github/issues/mohamadmahdi1234/compiler_phase_two_IE.svg?style=for-the-badge
[issues-url]: https://github.com/mohamadmahdi1234/compiler_phase_two_IE/issues
[license-shield]: https://img.shields.io/github/license/mohamadmahdi1234/compiler_phase_two_IE.svg?style=for-the-badge
[license-url]: https://github.com/mohamadmahdi1234/compiler_phase_two_IE/blob/master/LICENSE.txt
