# Echo back commands
set -x shl

echo Cloning repository...
git clone https://github.com/CreatorsTF/creatorstf-nginx-error-pages.git /var/www/error-pages

echo Linking snippets....
[[ !-d /etc/nginx/snippets/ ]] && mkdir -p /etc/nginx/snippets/
ln -s /var/www/error-pages/snippets/error_pages.conf /etc/nginx/snippets/error_pages.conf
ln -s /var/www/error-pages/snippets/error_pages_content.conf /etc/nginx/snippets/error_pages_content.conf


echo "Done! Copy & paste the following snippet onto your vhosts:"
echo.
echo "	include snippets/error_pages.conf;"
echo.
echo.
