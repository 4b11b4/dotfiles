# Access from Local Machine
If you run into problems accessing the db using the default "postgres" user,
you may modify `pg_hba.conf` file (located at `/etc/postgresql/12/main/`)
to use `trust` rather than `peer` or `md5`
for authentication.

With `trust`, any user that is able to connect to the db 
(ie: you are developing locally) will be given access.

From this point you may login and set up users and passwords and then
change the authentation method back to `md5`.
