# https://lisp-lang.org/learn/getting-started/

sudo apt-get install sbcl

curl -o ~/ql.lisp http://beta.quicklisp.org/quicklisp.lisp

sbcl --no-sysinit --no-userinit --load ~/ql.lisp \
       --eval '(quicklisp-quickstart:install :path "~/.quicklisp")' \
       --eval '(ql:add-to-init-file)' \
       --quit

echo -e '\n#+quicklisp\n(progn\n(push "~/quicklisp/local-projects/"\n      ql:*local-project-directories*)\n)' >> ~/.sbclrc

rm ~/ql.lisp

# TODO: https://stackoverflow.com/a/57706178
# Adds local-projects to where quicklisp scans

# FOR WINDOWS: https://kb.firedaemon.com/support/solutions/articles/4000121705#Download-OpenSSL 