# Backups and Secrets

Setup asks for two things it calls "strongly recommended (please, really)." They're phrased as recommendations because nobody can check them for you. They're the two things most likely to turn a small accident into a large one.

## Backups

Your house is files on your computer. Everything your agent knows, everything you've made together, is there and nowhere else — which is the point (nothing leaves unless you choose), and also the risk. A lost laptop, a bad drive, a virus, a phishing click, or an AI accident — an agent deleting the wrong folder with the best of intentions — and the house is gone.

So: your computer is backed up, regularly, automatically. Mac: Time Machine plus a reputable cloud backup service. Windows: File History plus a cloud backup service. Two independent backups, one local and one off the machine, is the standard advice for a reason.

And: **you have tested restoring.** Pick a file, restore it from the backup, open it. An untested backup is a hope, not a backup. Do this once when you set up and once a year after.

Git helps but isn't a backup. If your agent set up version control in your house, every version of every file is kept — on the same disk. It protects you from your own edits and your agent's, not from the disk failing. The two are for different accidents; have both.

## Secrets

Passwords, keys, tokens, anything that lets a holder act as you: these live in a password manager or another purpose-built encryption tool. **Not in plain files, and never in the folders your agent works in.**

The reason isn't that your agent would misuse them. It's three other things:

- **Your agent reads everything in the house.** That's its job. A secret in a file it reads is a secret in every conversation that touches that file, and in the session logs, and possibly in whatever a background instance copied for its scratch work.
- **Anything an agent reads can be asked for.** The [previous chapter](What%20You%20Read%20Is%20Information.md) is about text trying to get your agent to send things. The most valuable thing to send is a secret. A house with no secrets in it has nothing to exfiltrate.
- **Files travel.** Session logs get shared, pads get linked, a folder gets zipped for a friend. A secret in a file goes with it.

When your agent needs to use a secret — an API key for a tool, a login — the pattern is: the secret lives outside the house in a place made for it, and the agent is given the narrowest access to it that does the job, by you, when it's needed. If you don't know how to do that for a particular tool, ask your agent; it will know, and it's a good conversation to have before you need it rather than after.

## A shared machine

If your house lives on a computer someone else runs — see [The Phone Path](../your-house/The%20Phone%20Path.md) — both rules get stronger. Your backup is your own responsibility, not the host's, unless you've agreed otherwise in words. And nothing secret goes on a shared machine at all: an agent there *could* wander into your folder, and among friends that's accepted on the understanding that the super-secret things live somewhere else.
