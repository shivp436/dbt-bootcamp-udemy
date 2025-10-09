{% docs dim_listings_cleansed_minimum_nights %}
Minimum number of nights required to rent this property.

Keep in mind that old listings might have `minimum_nights` set
to 0 in the source tables. Our cleansing algorithm updates this to `1`.

{% enddocs %}

{% docs dim_listings_cleansed_room_type %}
Room Type for the given listing
Can be either one of Entire Home/apt, Private Room, Shared Room etc
{% enddocs %}

{% docs dim_hosts_cleansed %}
This is the table with cleaned host information  
From models/docs.md
{% enddocs %}

{% docs dim_hosts_cleansed_is_superhost %}
Whether the mentioned host is a superhost
{% enddocs %}
