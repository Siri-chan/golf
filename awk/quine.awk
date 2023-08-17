# Quine in AWK (Specifically GNU AWK)
# https://code.golf/quine#awk
# Copyright (c) Kira K. 2023

#BEGIN
END{a="END{a=%c%s%c;printf a,34,a,34}";printf a,34,a,34}
#END
