SELECT COUNT(*) AS numberOfUnverifiedAccounts FROM airbnbclone.guest
WHERE guest.verified = FALSE;