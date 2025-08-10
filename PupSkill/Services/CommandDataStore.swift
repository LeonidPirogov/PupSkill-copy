//
//  DataStore.swift
//  PupSkill
//
//  Created by Leonid on 07.08.2025.
//

import Foundation

struct CommandDataStore {
    static func getCommandList() -> [Command] {
        [
            Command(
                title: "High Five",
                description: """
                    1. Get your dog’s attention
                    Hold a treat in your hand and let your dog see or smell it so they focus on you.

                    2. Ask for a paw
                    Say “Paw” or gently tap one of your dog’s front legs to encourage them to lift it.

                    3. Introduce the “High Five” gesture
                    When your dog starts to lift their paw, hold your open hand (palm facing them) slightly above their paw.

                    4. Reward and praise
                    As soon as their paw touches your hand, say “High Five!” and give them the treat along with lots of praise.

                    5. Practice and build consistency
                    Repeat several times in short sessions, gradually phasing out the treat so your dog responds to the “High Five” command alone.
                    """,
                image: "HighFivePhoto"
            ),
            Command(
                title: "Bow",
                description: """
                    1. Get your dog’s attention
                    Hold a treat in your hand and let your dog focus on you.

                    2. Lure into the bow position
                    Slowly move the treat down toward the ground and slightly forward, encouraging your dog to lower their front legs while keeping their back legs standing.

                    3. Mark the position
                    As soon as your dog’s chest is close to the ground and their back end is still up, say “Bow!” in a cheerful voice.

                    4. Reward and praise
                    Immediately give the treat and offer enthusiastic praise while your dog is in the bow position.

                    5. Practice and add duration
                    Repeat several short sessions, gradually increasing the time your dog holds the bow before rewarding, until they respond to the verbal cue alone.
                    """,
                image: "BowPhoto"
            ),
            Command(
                title: "Smile",
                description: """
                    1. Get your dog’s attention
                    Call your dog’s name or hold a treat near your face so they focus on you.

                    2. Capture the natural smile
                    Wait for your dog to naturally lift the corners of their mouth (often happens when they’re excited or panting).

                    3. Add the cue
                    When you see the “smile” expression, say “Smile!” in a happy tone and immediately reward with a treat.

                    4. Encourage the behavior
                    If your dog doesn’t smile on their own, gently rub their cheeks or upper lip area to prompt the expression, then mark it with “Smile!” and reward.

                    5. Practice and reinforce
                    Repeat in short sessions, rewarding every successful smile, until your dog starts smiling on cue without physical prompts.
                    """,
                image: "SmilePhoto"
            ),
            Command(
                title: "Belly",
                description: """
                    1. Get your dog’s attention
                    Call your dog over and make sure they’re in a calm state, ready to follow your lead.

                    2. Lure into lying down
                    Hold a treat close to your dog’s nose and slowly move it toward the ground so they lie down.

                    3. Guide into belly-up position
                    Gently move the treat toward their side or shoulder so they roll onto their back, exposing their belly.

                    4. Add the cue
                    As soon as they’re on their back, say “Belly!” in a cheerful tone, then give the treat and praise.

                    5. Practice and reward
                    Repeat in short sessions, rewarding each time they roll over and stay belly-up on cue, gradually reducing hand luring.
                    """,
                image: "BellyPhoto"
            ),
            Command(
                title: "Stop",
                description: """
                    1. Get your dog’s attention
                    Say their name clearly so they focus on you.

                    2. Use a clear hand signal
                    Hold your hand out in front of you with your palm facing the dog (like a “stop” gesture).

                    3. Pair the cue with the action
                    Say “Stop!” in a firm but calm tone while holding the hand signal, then block their movement gently (e.g., with your body or leash) if needed.

                    4. Reward stillness
                    As soon as your dog freezes or stops moving, immediately give a treat and praise.

                    5. Practice in different situations
                    Repeat in short sessions, gradually practicing with distractions and at a distance, rewarding every successful stop.
                    """,
                image: "StopPhoto"
            ),
            Command(
                title: "Back Up",
                description: """
                    1. Get your dog’s attention
                    Stand facing your dog with a treat in your hand so they’re focused on you.

                    2. Step toward your dog
                    Take a slow step forward, encouraging them to take a step back to create space.

                    3. Add the verbal cue
                    As soon as your dog steps backward, say “Back up!” in a clear, upbeat tone.

                    4. Reward immediately
                    The moment your dog moves back, give them the treat and praise.

                    5. Practice and increase distance
                    Repeat the exercise, gradually increasing the number of steps your dog takes backward before rewarding.
                    """,
                image: "BackUpPhoto"
            ),
            Command(
                title: "Crawl",
                description: """
                    1. Get your dog’s attention
                    Have your dog lie down in front of you and show them a treat to keep their focus.

                    2. Lure forward slowly
                    Hold the treat just in front of their nose and slowly move it forward along the ground.

                    3. Prevent standing up
                    If your dog starts to get up, gently block with your hand or guide the treat lower to keep them in a lying position.

                    4. Add the verbal cue
                    When they take a few steps forward while staying low, say “Crawl!” in a cheerful tone and reward immediately.

                    5. Practice and extend distance
                    Repeat in short sessions, gradually increasing the distance they crawl before receiving the treat.
                    """,
                image: "CrawlPhoto"
            ),
            Command(
                title: "Lay Dead",
                description: """
                    1. Get your dog’s attention
                    Have your dog lie down and make sure they’re focused on you.

                    2. Lure into side position
                    Hold a treat near their nose and slowly move it toward their shoulder so they roll onto their side.

                    3. Add the verbal cue
                    Once they’re lying still on their side, say “Lay dead!” (or “Bang!” if you want a playful cue) in a clear, cheerful tone.

                    4. Reward and praise
                    Immediately give the treat and lots of praise while they stay in the position.

                    5. Practice and add duration
                    Repeat in short sessions, gradually increasing the time they remain still before rewarding.
                    """,
                image: "LayDeadPhoto"
            ),
            Command(
                title: "Hide Your Eyes",
                description: """
                    1. Get your dog’s attention
                    Have your dog sit or lie down in front of you and show them a treat.

                    2. Introduce the target
                    Place a small piece of tape, a sticky note, or a safe sticker on their nose (or use your hand) so they naturally paw at their face.

                    3. Mark the behavior
                    As soon as they touch their face with their paw, say “Hide your eyes!” in a cheerful tone.

                    4. Reward immediately
                    Give the treat and praise right after they cover their eyes, even for a split second.

                    5. Practice and fade the prop
                    Repeat in short sessions, gradually removing the tape or hand prompt until they perform the behavior on the verbal cue alone.
                    """,
                image: "HideYourEyesPhoto"
            ),
            Command(
                title: "Behind",
                description: """
                    1. Get your dog’s attention
                    Stand facing forward with your dog beside you and hold a treat in your hand behind your back.

                    2. Lure into position
                    Move the treat behind your legs so your dog follows it around to stand directly behind you.

                    3. Add the verbal cue
                    As soon as your dog reaches the position behind you, say “Behind!” in a clear, upbeat tone.

                    4. Reward and praise
                    Immediately give the treat and praise while they’re standing in the correct spot.

                    5. Practice and add duration
                    Repeat in short sessions, gradually having your dog stay behind you longer or follow you from behind on cue.
                    """,
                image: "BehindPhoto"
            ),
            Command(
                title: "Figure 8",
                description: """
                    1. Get your dog’s attention
                    Stand with your legs slightly apart and show your dog a treat to capture their focus.

                    2. Lure through the first leg
                    Guide your dog with the treat to walk through the gap between your legs from front to back on one side.

                    3. Loop around to the other leg
                    Bring the treat around the outside of your leg and guide your dog back through the gap from the other side.

                    4. Add the verbal cue
                    As they complete the movement, say “Figure 8!” in an upbeat tone and reward immediately.

                    5. Practice and smooth the movement
                    Repeat several short sessions until your dog can weave in a smooth figure-eight pattern without needing the treat as a lure.
                    """,
                image: "FigurePhoto"
            ),
            Command(
                title: "Balance Treat",
                description: """
                    1. Get your dog’s attention
                    Have your dog sit or lie down calmly and show them the treat you’ll be using.

                    2. Introduce the position
                    Gently place the treat on top of their nose while holding their head steady with your hand if needed.

                    3. Add the verbal cue
                    Say “Balance!” or “Balance treat!” in a calm voice as you place the treat.

                    4. Reward for holding still
                    After a few seconds, release them with a cue like “Okay!” so they can toss the treat into the air and catch it or eat it from the ground.

                    5. Practice and increase time
                    Repeat in short sessions, gradually increasing the duration they hold the treat before release, always rewarding success.
                    """,
                image: "BalanceTreatPhoto"
            )
        ]
    }
}
