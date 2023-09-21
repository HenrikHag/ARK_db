### ARK database

This project contains an SQL file for a consept relational database to store data for the game `ARK: Survival Evolved`.  

As the amount of `Dinos`, `Tools` and `Armor` increased there was a need to look up owned items and sort them based on their attributes. Since the data has a lot of relationships, relational databases works well for this task.  

A problem with working with the database directly is that it takes some time to insert data, so later a script written in Python was used instead.

Things that could be expanded upon for this project:  

- New tables and attributes:
    - Parents of `Dinos`  
        - Useful for finding the tamed and not bred dinos
            - The tamed dinos carry over some stats gained by giving them `Mutagen` to their offspring.  
        - Useful for generating family trees  
    - Player ownership if in multiplayer or on a local multiplayer.  
- Connecting the database to a webpage or program
    - Making available a GUI or tools to more easily insert data.