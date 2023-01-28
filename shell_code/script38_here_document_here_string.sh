#!/bin/bash

NAME="Shell Scripting"
tr [:lower:] [:upper:] <<END
this is a good day $(date)
you are learning ${NAME}
END

echo "################"

NAME="Shell Scripting"
tr [:lower:] [:upper:] <<END
this is a good day /$(date)
you are learning /${NAME}
END


echo "################"

NAME="Shell Scripting"
tr [:lower:] [:upper:] <<'END'
        this is a good day $(date)
        you are learning ${NAME}
END

echo "################"

NAME="Shell Scripting"
tr [:lower:] [:upper:] <<-'END'
        this is a good day $(date)
	you are learning ${NAME}
END

echo "################"

NAME="Shell Scripting"
echo "not printing after this "
<<-END
        this is a good day $(date)
	you are learning ${NAME}
END

echo "################"
NAME="Shell Scripting"
echo "not printing after this "
<<END
        this is a good day $(date)
	you are learning ${NAME}
END