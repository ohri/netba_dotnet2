<%@ Page Language="C#" MasterPageFile="~/Netba.master" AutoEventWireup="true" CodeFile="Rules.aspx.cs" Inherits="Rules" Title="League Rules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
League Rules
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
                    <i>last updated: 1/31/06 by Joe Rupp</i><br/>
                    <ul>
                        <li><a href="#ROSTER">Roster</a></li>
                            <li><a href="#ELIGIBILITY">Position Eligibility</a></li>
                                <li><a href="#SCORING">Scoring Formula</a></li>
                                    <li><a href="#GAME_ROSTERS">Game Rosters</a></li>
                                        <li><a href="#AUTO_SUB">Automatic Substitutions</a></li>
                                            <li><a href="#TANKING">Tanking</a></li>
                                                <li><a href="#TRADES">Trades</a></li>
                                                    <li><a href="#FREE_AGENTS">Free Agents</a></li>
                                                        <li><a href="#IR">Injured Reserve</a></li>
                                                            <li><a href="#PROTECTED_LIST">Protected Lists</a></li>
                                                                <li><a href="#PLAYOFFS">Playoffs</a></li>
                                                                    <li><a href="#BRAGGING_RIGHTS">Bragging Rights</a></li>
                                                                        <li><a href="#DRAFT">Draft</a></li>
                                                                            <li><a href="#SCHEDULE">82 Game Schedule Mechanics</a></li>
                                                                                <li><a href="#OVERTIME">Overtime</a></li>
                                                                                    <li><a href="#NETBAOC">Owner's Committee</a></li>
                                                                                        <li><a href="#RULECHANGE">Rule Change Procedure</a> </li>
                    </ul>
                    
                        <br/>
                                        <hr />
                    
                        <a name="ROSTER" />
                    
                    
                        Roster of 12 players<br/>
                        <br/>
                        1. PG<br/>
                        2. SG<br/>
                        3. SF<br/>
                        4. PF<br/>
                        5. C<br/>
                        6. PG<br/>
                        7. SG<br/>
                        8. SF<br/>
                        9. PF<br/>
                        10. C<br/>
                        11. G1<br/>
                        12. G2<br/>
                        <br/>
                    
                    <h6>
                        <a href="#TOP">Back to top</a></h6>
                    <h6>
                        &nbsp;</h6>
                    <hr />
                    
                        <a name="ALIGNMENT" />
                    
                    
                        POSITION ELIGIBILITY<br />
                        <br/>
                    
                    
                        Positions are set at a date well before the season start by "freezing" a slice of
                        rosters from ESPN.com's website. The positions will remained fixed throughout the
                        season. The position pages will be available via the league website. These must
                        be used correctly on any form of transaction.<br />
                    
                    
                        <br/>
                        G - May play either point guard or shooting guard.<br/>
                        GF - May play shooting guard or small forward.<br/>
                        F - May play either small forward or power forward.<br/>
                        FC - May play power forward or center.<br/>
                        C - May play center only.<br/>
                        <br/>
                        nb Any player may play either Garbage position<br/>
                        <br/>
                        <br/>
                    
                    
                        From the time the our "preseason" starts (i.e., when we decide the positions are
                        fixed) until protected lists are due, an owner has the opportunity to petition for
                        a player's position change. A one position shift from the official position source
                        listing (or their current position if already changed) is allowed. If a player played
                        33% of his games at the different position (say C when he is listed at F), then
                        the player's position may be changed. The official source for this data is the espn.com
                        nba players's page (splits section). The change is non-permanent - it is valid only
                        for the upcoming season and will be reset when the positions are "frozen" the following
                        year. It doesn't apply for rookies or players who did not start any games the previous
                        year, as no data will be available. You can only petition for changes to your own
                        players and only before protected lists are due. Further changes of a player's position
                        on the official position source site are ignored once that player has been petitioned/changed.
                        Only players that are petitioned are changed; the change does not happen automatically.
                        Requests for position change should be sent to the OC with supporting data in the
                        previously mentioned preseason period.
                    
                        <br/>
                    
                    <h6>
                        <a href="#TOP">Back to top</a></h6>
                    <hr />
                    
                        <a name="SCORING"></a>
                    
                    
                        SCORING FORMULA FOR TEAMS<br/>
                        <br/>
                        Player Offensive Score =<br/>
                        <br/>
                        Points + Offensive Rebounds x 2 + Assists - Fouls + 3 Point Shots Made<br/>
                        <br/>
                        Player Defensive Score =<br/>
                        <br/>
                        Defensive Rebounds + Steals x 2 + Blocks x 2 - Turnovers<br/>
                        <br/>
                        Team Score =<br />
                    <br/>
                    
                    
                        Add a player's offensive points, average, and round. Do this for all players, then
                        add them together to get the team offensive score. Do the same for defensive points.
                        Do the same for the other team.
                    <br />
                    
                        <br/>
                        Team Score = offensive points - opponent defensive points<br/>
                        <br/>
                        Add 4 pts for Home Court Advantage.<br/>
                        <br/>
                        Starting 5 scores full points.<br/>
                        <br/>
                        Backup 5 score half points.<br/>
                        <br/>
                        Garbage men score 1/4 points.<br/>
                        <br/>
                    
                    
                        nb(1) OFF = Points + Offensive Rebounds x 2 + Assists - Fouls + Made 3-Point Shots
                    <br />
                    <br />
                    nb(2) DEF = Steals x 2 + Blocks x 2 + Defensive Rebounds - Turnovers
                    <br />
                    <br />
                    
                        nb(3) Total and record OFF and DEF points each game for each player.
                    <br />
                    <br />
                    
                    
                        nb(4) To get team scores, total the OFF and DEF column for all players. This gets
                        you A, B, C, D. Round once only, i.e. you average for each player and divide by
                        2 if a backup or 4 if a garbage and then round up at 0.5 once. i.e. backup guys
                        scores 50 for offense in 3 games. 50/3/2 = 8.33 = 8. Not 50/3 = 16.67 = 17 and 17/2
                        = 8.5 = 9. This is the new version to correct massive rounding error. Also easier
                        to keep scoring records for next year. :) Round at the player average stage for
                        this reason, and also easier to enter and add. Should save you a lot of work on
                        scoresheets and others.
                    <br />
                    <br />
                    
                    
                        nb(5) Only round once. So average and divide by 2 for backups, then round, and average
                        then divide by 4 for garbage guys and then round. The player scores are already
                        rounded so don't need to round team scores of course.
                    <br />
                    <br />
                    
                    
                        nb(6) DNP's do not count toward a player's score, i.e. a player's team plays four
                        games but he does not play in game 3. He scores 60 pts total for the three games.
                        Therefore his point average would be 20, not 15.
                    <br />
                    <br />
                    nb(7) All averages are to be rounded to the nearest integer. i.e. = 0.5 = round
                        up. 2 3.25 = 23. 23.67 is 24. This will make it easier to score and scores will
                        fit in the scoresheet, and will be easier all round.
                    <br />
                    
                        <br/>
                        Scoring period = Friday to Thursday.<br/>
                        
                            <br/>
                        
                        <h6>
                            <a href="#TOP">Back to top</a></h6>
                        
                        <hr />
                        
                            <a name="GAME_ROSTERS"></a>
                        
                        
                            GAME ROSTERS<br/>
                            <br/>
                        
                        
                            Rosters must be sent by Friday before the tip off of the earliest game. Lineups
                            are submitted through the league website's <a href="lineups.aspx">Submit Lineup</a>
                            page. If a valid lineup is not submitted in time, the last valid submitted lineup
                            will be used.
                        
                        
                            <br/>
                            <br/>
                        
                        <h6>
                            <a href="#TOP">Back to top</a></h6>
                        <hr />
                        
                            <a name="AUTO_SUB"></a>
                        
                        
                            AUTOMATIC SUBSTITUTIONS<br/>
                            <br/>
                        
                        
                            If a player in a starter or backup position does not play in any games that game
                            week for any reason, he is replaced by the player behind him. In the case of a backup
                            replacing a starter, a garbage player may move up to replace the backup who moved
                            up if a position eligible player is present. If both garbage players are eligible
                            to move (by position), they will be taken in order (Garbage 1, then Garbage2).
                    <br />
                    <br />
                        
                        
                            Example:
                        
                        <pre>          Starters         Backups          Garbage
    PG  Chris Childs     God Shamgod      Mugsy Bogues G
    SG  Harold Minor     Bryce Drew
    SF  Donny Marshall   Chucky Brown
    PF  Kurt Rambis      Carlos Rogers    Ansu Sesay F
    C   Danny Schayes    Manute Bol
</pre>
                    <br />
                        
                            If Harold Minor plays in no games in the week, Bryce Drew replaces him in the starting
                            lineup. Mugsy Bogues (being a garbage player eligible to replace Drew) moves into
                            the backup role. Minor is listed in the garbage section.
                    <br />
                    <br />
                        
                        
                            If God Shamgod then also does not play, there is no player eligible to move up into
                            his spot, so he stays put and scores 0 points.
                    <br />
                    <br />
                    If Manute Bol did not play that week, there is no player eligible to move up into
                    his spot so he stays put and scores 0 points.
                    <br />
                    <br />
                        
                        
                            When submitting a lineup, you may specify that a certain player replaces another
                            player in the case that they do not play. For example, if Kurt Rambis is likely
                            out for the week, and you would rather have Chucky Brown replace him in the starting
                            lineup instead of Carlos Rogers in the case that Rambis does not play, add a note
                            when submitting your lineup saying so.
                            
                                <br/>
                                <br/>
                            
                            <h6>
                                <a href="#TOP">Back to top</a></h6>
                            
                            <hr />
                            
                                <a name="TANKING"></a>
                            
                            
                                TANKING<br/>
                                <br/>
                            
                            
                                Tanking shall be defined as intentionally trying to lose by starting inferior players
                                when significantly (&gt;5 netppg) better players are available on their roster and
                                there is no supporting evidence of injuries, suspensions, player "getting hot" or
                                "getting cold", moving into the starting lineup for their real team, being benched,
                                etc. Note that it isn't actually tanking unless the lineup ends up being the official
                                lineup for a given week, so submitting a "tanking" lineup but changing it before
                                the lineup deadline would not be an offense by these rules.
                    <br />
                    <br />
                            
                            
                                The first instance of tanking will result in the offending team's first round pick
                                being moved to the #8 slot (i.e., the end of the lottery) irregardless of their
                                finishing record or draw in the lottery. The other lottery teams will be moved up
                                accordingly. The second instance of tanking will result in the offending team's
                                first round pick being moved to the end of round 1, the #16 slot irregardless of
                                their finishing record. The other teams in the draft will be moved up accordingly.
                    <br />
                    <br />
                            
                            
                                The accused team shall have the opportunity to promptly defend their actions and
                                the OC will judge the validity of the claims. The accused team should get the benefit
                                of the doubt if their moves are defensible. Placing starting caliber players at
                                garbage slots would be an example of something indefensible (unless the team had
                                11 starting caliber players). An example of a defensible move would be benching
                                a 25 point player for a 15 point player who has recently moved into the starting
                                lineup of their real team. Care should be taken with regards to early season penalties,
                                as player averages will vary wildly through the first month or two of the season.
                            
                            <br/>
                            <br/>
                            
                            
                            <h6>
                                <a href="#TOP">Back to top</a></h6>
                            <hr />
                            
                                <a name="TRADES"></a>
                            
                            
                                TRADES<br/>
                                <br/>
                            
                            
                                Trade confirmations must be sent by both parties to the owner's committee (netba-oc@yahoogroups.com)
                                and will be looked at by the league office. Trade deadline each week will be Thursday
                                midnight ET to be allowed for games starting the following day. Trades must include
                                all pertinent information about players and draft picks, or they will not be processed.
                            
                                <br/>
                    <br />
                            
                            
                                The NETBA-OC may disallow a trade! Four of five members of the committee must vote
                                in favor of disallowing a trade for this to happen.
                            
                                <br/>
                    <br />
                            
                            
                                nb(1) The end of season trade deadline will be at the same time that rosters are
                                due in for the second to last week of the regular season i.e. Friday for week 15
                                games.
                            <hr />
                            
                                <a name="FREE_AGENTS"></a>
                            
                            
                                FREE AGENT TRANSACTIONS<br/>
                                <br/>
                            
                            
                                Free agent claims should be submitted to <a href="mailto:ramanohri@gmail.com">ramanohri@gmail.com</a>
                                with the following subject line: "netba transaction". Transactions not sent to this
                                address with this subject line will be discarded.
                    <br />
                    <br />
                            
                                Transactions will be processed Monday thru Thursday, with a deadline of 9 AM EST.
                                Any transaction received after that time will be pushed off to the next transaction
                                day.
                    <br />
                    <br />
                            
                                Free Agents may be signed and another player released on a daily basis. All transactions
                                must include NetBA team name, a player's full name, NBA team, and official NetBA
                                position.
                    <br />
                    <br />
                            
                                Waiver order for teams will be reverse order based on power rankings (average raw
                                points). The average used will be the most recent available during the season. For
                                the first week of the season, the waiver order will be the same as the regular draft
                                order.
                    <br />
                    <br />
                            
                                nb(1) Free agents may only be signed in case of injury during the playoffs.
                                <br/>
                            <h6>
                                <a href="#TOP">Back to top</a></h6>
                            <hr />
                            
                                <a name="IR"></a>
                            
                            
                                INJURED RESERVE<br/>
                                <br/>
                            
                            
                                You will have a three man injured reserve (IR) list. You may place a player on it
                                if they are legitimately injured and are projected to be on the NBA inactive list
                                for at least one week, or if you can prove they are seriously hurt and being carried
                                by their NBA team in the 12 spot because that team has too many people on the inactive
                                list already. You must send a transaction to do this with all the correct information.
                                During the regular season, a player must remain on IR for at least one of our game
                                weeks. i.e. if in week one one of your players gets hurt, and you put him on IR
                                at the end of that week then he would have to be out at least all of week two. Players
                                may be placed on or activated from IR as needed (with the normal qualification rules)
                                during the preseason. Someone being suspended, arrested, having a stubbed toe, or
                                the flu, or a broken fingernail doesn't qualify them for IR.
                            
                                <br/>
                    <br />
                            
                            
                                nb(1) You may NOT sign an injured free agent and put them on your IR list or sign
                                any player and put them straight on IR.
                            
                                <br/>
                    <br />
                            
                            
                                nb(2) Free agent signings always take effect in the next week. i.e. those made during
                                week 2 will be eligible to play in week 3, etc.
                            
                                <br/>
                            
                            <h6>
                                <a href="#TOP">Back to top</a></h6>
                            <hr />
                            
                                <a name="PROTECTED_LIST"></a>
                            
                            
                                PROTECTED LISTS<br/>
                                <br/>
                            
                            
                                At the end of the season, five players will be protected. This will be a starting
                                five. i.e. you must be able to field a legal starting five with the players you
                                protect, according to the position designations from the official position source.
                            
                                <br/>
                            
                            <h6>
                                <a href="#TOP">Back to top</a></h6>
                            <hr />
                            
                                <a name="PLAYOFFS"></a>
                            
                            
                                PLAYOFFS<br/>
                                <br/>
                            
                            
                                Playoffs will be seeded 1 v 4, 2 v 3 for each conference by overall W-L record,
                                with the 1 and 2 seeds awarded to the division champions. Home-court advantage goes
                                to the higher seeds in the divisional and conference rounds, and to the team with
                                the best regular-season W-L record in the finals. Tiebreakers for seeding/home-court
                                will be broken by head to head, division, conference, points.
                            
                            
                                <br/>
                            
                            <h6>
                                <a href="#TOP">Back to top</a></h6>
                            <hr />
                            
                                <a name="BRAGGING_RIGHTS"></a>
                            
                            
                                BRAGGING RIGHTS<br/>
                                <br/>
                            
                            
                                The winners of each division may rename their division for the next season if they
                                so desire. Really stupid/boring or dumb stuff may be overuled by the OC. The winning
                                coaches of the All-Star game may submit choices for conference name to me in secret,
                                and I will make up a ballot with their 3 choices for them to vote on for conference
                                name if they want.
                            
                            
                                <br/>
                            
                            <h6>
                                <a href="#TOP">Back to top</a></h6>
                            <hr />
                            
                                <a name="DRAFT"></a>
                            
                            
                                DRAFT<br/>
                                <br/>
                                7 round draft.<br/>
                                <br/>
                            
                            
                                The draft order for playoff teams will be in reverse order based on power rankings
                                (average raw points). No playoff team will pick before a non-playoff team.
                    <br />
                    <br />
                            
                                The playoff teams will be ordered by 1) The round in which they exit the playoffs,
                                and 2) power rankings. For example, the 9-12 draft selections will consist of the
                                teams eliminated in the first round of the playoffs, pick 9 going to the team with
                                the lowest power ranking, and pick 12 going to the team with the highest power ranking.
                                The league champion from the previous year will have the 16th pick regardless of
                                its power ranking.
                    <br />
                    <br />
                                
                                    The non-playoff teams will be in a draft lottery. Teams will be assigned "chances"
                                    based upon the following:
                                <pre>Best power ranking:     29 chances
2nd best power ranking: 25 chances
3rd best power ranking: 19 chances
4th best power ranking: 12 chances
5th best power ranking: 7 chances
6th best power ranking: 5 chances
7th best power ranking: 2 chances
8th best power ranking: 1 chance
</pre>
                    <br />
                                
                                    The random number generator will be the cents figure on the day of the dow jones
                                    industrial average. On the first day, the 8th pick will be determined, the second
                                    day the 7th, etc. The total of all chances will be added together, and each team
                                    will have a percentage of the chances. For example, on day 1 (when the total number
                                    of chances is 100) a dow of $xxxx.00 through $xxxx.28 would result in the team with
                                    the best power ranking getting the 8th overall selection, a dow of $xxxx.29 through
                                    $xxxx.53 would result in the team with the 2nd best power ranking getting the 8th
                                    pick, etc.
                    <br />
                    <br />
                                
                                    On day 2, the chances would be totalled again without the 'eliminated' team in it.
                                    So assuming that the best overall team was eliminated day 1, there would now be
                                    71 total chances, and the second best team would have 25/71 chances = 35.2% (round
                                    it to 35). They would be "selected" to pick 7th if the dow that day ended up between
                                    $xxxx.00 and $xxxx.34. The 3rd best team would have 19/71 chances = 26.7% (round
                                    to 27) and would be "selected" if the dow ends up between $xxxx.35 and $xxxx.61.
                                    Etc. If rounding causes there to be more than 100%, then the lowest ranked team
                                    will have "cents" removed from their span to bring it back to 100 (and if this would
                                    bring them down to zero, then cents get removed from the second lowest team's span).
                    <br />
                    <br />
                                
                                    The first overall pick goes to the last team to be "selected".
                                
                                    You must submit as many names as your draft position in that round. i.e. if you
                                    pick second, your draft list would look like this :-
                                
                                    <br/>
                    <br />
                                    1. Michael Jordan G, Chi<br/>
                                    2. Scottie Pippen G/F, Chi<br/>
                                    <br/>
                                    etc.<br/>
                                    <br/>
                                
                                
                                    Draft lists and any transactions should be in this format, always. Full name, position,
                                    real NBA team, and official position.
                                    <br/>
                                    <br/>
                                <h6>
                                    <a href="#TOP">Back to top</a></h6>
                                <hr />
                                
                                    <a name="SCHEDULE"></a>
                                
                                
                                    82 GAME SCHEDULE MECHANICS<br/>
                                    <br/>
                                    <br/>
                                
                                
                                    16 week regular season, summing to a total of 82 games. There is a one-week break
                                    coinciding with the week of the NBA All-Star game.
                                <pre>4-game series :-
Game tied :-  2-2 split
Win by 1-29 - 3-1 
Win by 30+    4-0

5-game series :-

Game tied :- OT Winner    3-2
Win by 1-10  3-2
Win by 11-29 4-1
Win by 30+   5-0

6-game series :-

Game tied :- 3-3 split
Win by 1-19  points 4-2
Win by 20-29 points 5-1
Win by 30+   points 6-0

7-game series :-

Game tied   :- 4-3 overtime winner
Win by 1-19  points 4-3
Win by 20-29 points 5-2
Win by 30-39 points 6-1
Win by 40+   points 7-0
</pre>
                    <br />
                                
                                    For all rounds of the playoffs, we play a 7-game series.
                                
                                    <br/>
                                
                                <h6>
                                    <a href="#TOP">Back to top</a></h6>
                                <hr />
                                
                                    <a name="OVERTIME"></a>
                                
                                
                                    OVERTIME RULES<br/>
                                    <br/>
                                
                                
                                    If a game ends in a tie, a modified scoring system will be used to determine the
                                    winner. The modified scoring system uses the normal scoring formula but with no
                                    rounding anywhere in the calculation. If this also results in a tie, the following
                                    criteria are used (in order): - compare points contributed by the starters - compare
                                    points contributed by the backups - compare total points scored by starters (not
                                    averaged) - compare total points score by backups (not averaged). In the astronomically
                                    unlikely event that this does not resolve the tie, the home team wins.
                                
                                    <br/>
                                
                                <h6>
                                    <a href="#TOP">Back to top</a></h6>
                                <hr />
                                
                                    <a name="NETBAOC"></a>
                                
                                
                                    OWNERS COMMITTEE<br/>
                    <br />
                                
                                
                                    The OC functions to provide leadership and organization to the league. The committee
                                    will consist of 5 members at any time, each an active owner of a NetBA team. Rule
                                    changes, suggestions/ideas, and disputes of any kind be brought before the OC for
                                    resolution.
                                
                                    The current OC members are:
                                <ul>
                                    <li><a href="mailto:koolj@comcast.net">Al Burns</a>
                                        <li><a href="mailto:chris.carter@natoil.com">Chris Carter</a>
                                            <li><a href="mailto:jleiss@netional.org">Jeff Leiss</a>
                                                <li><a href="mailto:ohri@sep.com">Raman Ohri</a>
                                                    <li><a href="mailto:josephrupp@yahoo.com">Joe Rupp</a> </li>
                                </ul>
                                
                                    <br/>
                                
                                <h6>
                                    <a href="#TOP">Back to top</a></h6>
                                <hr />
                                
                                    <a name="RULECHANGE"></a>
                                
                                
                                    RULE CHANGES<br/>
                    <br />
                                
                                
                                    Rule changes are brought to the OC. They then have a week to discuss and vote on
                                    the rule. If the rule is supported by a majority vote of the OC, it goes before
                                    the league. If it doesn't get past the OC, it's gone.
                    <br />
                    <br />
                                
                                    Once the rule change goes before the league, 5 'against' votes stop the rule. Not
                                    voting is the same as voting FOR the rule change! The league will have one week
                                    to vote. In special circumstances, the voting period may be shortened.
                                
                                    <br/>
                                
                                <h6>
                                    <a href="#TOP">Back to top</a></h6>
                                
                                <hr />
</asp:Content>

