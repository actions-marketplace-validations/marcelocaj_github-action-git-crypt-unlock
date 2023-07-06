# Github Action to run git-crypt secrets in specific folder

## Usage

### Example Workflow file

```yaml
jobs:
  deploy:
    name: Test git-crypt-unlock
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
        with:
          path: custom-folder
      - name: Unlock secrets
        uses: marcelocaj/github-action-git-crypt-unlock@v1.0.0
        env:
          GIT_CRYPT_KEY: ${{ secrets.GIT_CRYPT_KEY }}
          REPO_PATH: custom-folder
```

### Secrets

- `GIT_CRYPT_KEY` **Required** Base64 encoded git-crypt key file.
  - Get it from an unlocked git-crypt env with:
    ```sh
    git-crypt export-key ./tmp-key && cat ./tmp-key | base64 | pbcopy && rm ./tmp-key
    ```

### Running tests

```shell script
./test/entrypoint_test.sh
```


Based on https://github.com/marketplace/actions/github-action-to-unlock-git-crypt-secrets
