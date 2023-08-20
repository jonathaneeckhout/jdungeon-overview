# How to contribute

1. Fork the Repository of the module you want to work on:

   On the project's GitHub page, click the "Fork" button in the upper right corner. This creates a copy of the project's repository in your GitHub account.

2. Clone the Forked Repository:

   Clone the forked repository to your local machine using the git clone command. Replace <your-forked-repo-url> with the actual URL of your forked repository:

   ```bash
   git clone <your-forked-repo-url>
   ```
3. Set Up Upstream Remote:

   Add a remote reference to the original project repository. This allows you to keep your forked repository in sync with any changes in the original repository:

   ```bash
   git remote add upstream <original-repo-url>
   ```
4. Create a New Branch:

   Before making any changes, create a new branch for your contribution. This helps keep your changes isolated from the main branch:

   ```bash
   git checkout -b <branch-name>
   ```
5. Make Changes:

   Make the desired changes or additions to the codebase in your local branch.

6. Commit Changes:

   After making changes, commit them with a meaningful commit message:

   ```bash
   git add .
   git commit -m "Your descriptive commit message here"
   ```
7. Sync with Upstream:

   Before pushing your changes, sync your forked repository with the original repository to ensure you're working with the latest code:

   ```bash
   git fetch upstream
   git merge upstream/main  # or the appropriate branch
   ```
8. Resolve Conflicts (If Any):

   If there are conflicts between your changes and the upstream changes, resolve them in your local repository.

9. Push Changes: Push your changes to your forked repository on GitHub:

   ```bash
   git push origin <branch-name>
   ```
10. Create a Pull Request (PR):

    On your forked repository's GitHub page, you'll see a prompt to create a pull request from your branch to the original repository's main branch. Fill in the necessary details, including a descriptive title and a clear description of your changes.

11. Engage in Discussion:

    Your PR might undergo review, feedback, and discussions. Be responsive and willing to make necessary changes based on feedback.

12. Finalize and Merge:

    Once your changes are approved and any requested changes are made, the project maintainers will merge your PR into the main repository.

14. Celebrate Your Contribution!:

    Congratulations, you've successfully contributed to an open-source project! Your changes are now part of the project's codebase.
