'''Author: Finn Bergquist
This Sonic Pi project creates a backing track to inspire novel musical choices.'''
use_bpm 130

live_loop :vinyl do
  sample :vinyl_hiss
  sleep 10
end

#Define All musical parts
define :bass_chords do
  use_synth :kalimba
  with_fx :ping_pong do
    with_fx :echo, phase: 0.15, amp:6 do
      play_pattern_timed chord(:A, :minor7), 1, pan: rrand(-1, 1)
      play_pattern_timed chord(:A, :minor7), 1, pan: rrand(-1, 1)
      play_pattern_timed chord(:F, :major7), 1, pan: rrand(-1, 1)
      play_pattern_timed chord(:F, :major7), 1, pan: rrand(-1, 1)
      play_pattern_timed chord(:G, "7"), 1, pan: rrand(-1, 1)
      play_pattern_timed chord(:G, "7"), 1, pan: rrand(-1, 1)
      play_pattern_timed chord(:E, :minor7), 1, pan: rrand(-1, 1)
      play_pattern_timed chord(:E, "7"), 1, pan: rrand(-1, 1)
    end
  end
end

define :kick do
  with_fx :level, amp:3 do
    sample :drum_heavy_kick
    sleep 5
    sample :drum_heavy_kick
    sleep 3
    sample :drum_heavy_kick
    sleep 5
    sample :drum_heavy_kick
    sleep 3
    sample :drum_heavy_kick
    sleep 5
    sample :drum_heavy_kick
    sleep 3
    sample :drum_heavy_kick
    sleep 5
    sample :drum_heavy_kick
    sleep 3
  end
end

define :kick_interlude_1 do
  with_fx :level, amp:3 do
    sample :drum_heavy_kick
    sleep 4
    sample :drum_heavy_kick
    sleep 4
    sample :drum_heavy_kick
    sleep 4
    sample :drum_heavy_kick
    sleep 4
    sample :drum_heavy_kick
    sleep 4
    sample :drum_heavy_kick
    sleep 4
    sample :drum_heavy_kick
    sleep 4
  end
end

define :first_snare do
  with_fx :level, amp:1 do
    sleep 1.96
    sample :drum_snare_hard
  end
end

define :snare do
  with_fx :level, amp:1 do
    sleep 1.96
    sample :drum_snare_hard
    sleep 4
    sample :drum_snare_hard
    sleep 2.04
    sleep 1.96
    sample :drum_snare_hard
    sleep 4
    sample :drum_snare_hard
    sleep 2.04
    sleep 1.96
    sample :drum_snare_hard
    sleep 4
    sample :drum_snare_hard
    sleep 2.04
    sleep 1.96
    sample :drum_snare_hard
    sleep 4
    sample :drum_snare_hard
    sleep 2.04
  end
end

define :random_organ do
  s = scale(:a4, :minor, num_octaves: 1)
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 0.75 do
      with_synth :organ_tonewheel do
        with_fx :level, amp: 0.5 do
          play s.choose, release: 4, sustain: 6
          sleep 4
          play s.choose, release: 4, sustain: 6
          sleep 8
          play s.choose, release: 4, sustain: 6
          sleep 4
          play s.choose, release: 4, sustain: 6
          sleep 8
          play s.choose, release: 4, sustain: 6
          sleep 8
        end
      end
    end
  end
end

define :random_pad do
  s = scale(:a4, :minor, num_octaves: 1)
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 0.75 do
      with_synth :dark_ambience do
        with_fx :level, amp: 3 do
          play s.choose, release: 4, sustain: 6
          sleep 8
          play s.choose, release: 4, sustain: 6
          sleep 4
          play s.choose, release: 4, sustain: 6
          sleep 8
          play s.choose, release: 4, sustain: 6
          sleep 4
          play s.choose, release: 4, sustain: 6
          sleep 8
        end
      end
    end
  end
end

define :cymbal_hard do
  with_fx :pan, pan: -0.75 do
    with_fx :level, amp: 0.2 do
      sleep 1
      sample :drum_cymbal_hard
      sleep 7
      sleep 1
      sample :drum_cymbal_hard
      sleep 7
      sleep 1
      sample :drum_cymbal_hard
      sleep 7
      sleep 1
      sample :drum_cymbal_hard
      sleep 7
    end
  end
end

define :cymbal_pedal do
  with_fx :pan, pan: 0.75 do
    with_fx :level, amp: 1 do
      sleep 1.02
      sample :drum_cymbal_pedal
      sleep 1.01
      sample :drum_cymbal_pedal
      sleep 0.99
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 0.5
      sample :drum_cymbal_pedal
      sleep 0.48
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 1.02
      sample :drum_cymbal_pedal
      sleep 1.01
      sample :drum_cymbal_pedal
      sleep 0.99
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 0.48
      sample :drum_cymbal_pedal
      sleep 0.5
      sample :drum_cymbal_pedal
      sleep 1.02
      sample :drum_cymbal_pedal
      sleep 1.01
      sample :drum_cymbal_pedal
      sleep 0.99
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 0.48
      sample :drum_cymbal_pedal
      sleep 0.5
      sample :drum_cymbal_pedal
      sleep 1.02
      sample :drum_cymbal_pedal
      sleep 1.01
      sample :drum_cymbal_pedal
      sleep 0.99
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 0.48
      sample :drum_cymbal_pedal
      sleep 0.5
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
      sleep 1
      sample :drum_cymbal_pedal
    end
  end
end

define :synth_chords do
  use_synth :hollow
  with_fx :level, amp: 3 do
    play_chord chord(:A, :minor7), sustain: 8, release: 3
    sleep 8
    play_chord chord(:F, :major7), sustain: 8, release: 3
    sleep 8
    play_chord chord(:G, "7"), sustain: 8, release: 3
    sleep 8
    play_chord chord(:E, :minor7), sustain: 4, release: 3
    sleep 4
    play_chord chord(:E, "7"), sustain: 4, release: 3
    sleep 4
  end
end

define :melody_bridge_1 do
  use_synth :rodeo
  play_pattern_timed [:f2, :f2, :f2,:f2, :f2, :f2, :e2, :e2, :e2, :e2, :e2, :e2], [0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666], attack: 0, release: 0.2
end

define :melody_bridge_2 do
  use_synth :tri
  play_pattern_timed [:f3, :f3, :f3, :e3, :e3, :e3], [1.333, 1.333, 1.333, 1.333,1.333, 1.333], attack: 0, release: 0.2
end

define :melody_bridge_3 do
  use_synth :growl
  play_pattern_timed [:f5, :f4, :f5,:f6, :f4, :f4, :e3, :e4, :e2, :e3, :e5, :e6], [0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666,0.6666], attack: 0, release: 0.2
end

define :melody_bass do
  use_synth :chipbass
  with_fx :level, amp: 4 do
    with_fx :wobble do
      play_pattern_timed [:f1,:e1], [4,4], attack: 0, release: 4
    end
  end
end

#Arangement of individual parts
define :intro1 do
  in_thread do
    synth_chords
  end
end

define :intro_snare do
  in_thread do
    first_snare
  end
end

define :intro2 do
  in_thread do
    synth_chords
  end
  in_thread do
    bass_chords
  end
  in_thread do
    cymbal_pedal
  end
  in_thread do
    kick
  end
  in_thread do
    cymbal_hard
  end
  in_thread do
    snare
  end
end

define :interlude1 do
  in_thread do
    random_organ
  end
  in_thread do
    random_pad
  end
end

define :interlude2 do
  in_thread do
    random_organ
  end
  in_thread do
    random_pad
  end
  in_thread do
    random_organ
  end
  in_thread do
    random_pad
  end
end

define :interlude3 do
  in_thread do
    random_organ
  end
  in_thread do
    random_pad
  end
  in_thread do
    random_organ
  end
  in_thread do
    random_pad
  end
  in_thread do
    random_organ
  end
  in_thread do
    random_pad
  end
  in_thread do
    random_organ
  end
  in_thread do
    random_pad
  end
  in_thread do
    kick
  end
  in_thread do
    kick_interlude_1
  end
end

define :melody_bridge do
  in_thread do
    melody_bridge_1
  end
  in_thread do
    melody_bridge_2
  end
  in_thread do
    melody_bridge_3
  end
  in_thread do
    melody_bass
  end
end

#Master arrangement of individual parts
in_thread do
  intro1
  in_thread delay: 28 do
    intro_snare
  end
  in_thread delay: 32 do
    intro2
  end
  in_thread delay: 64 do
    intro2
  end
  in_thread delay: 96 do
    interlude1
  end
  in_thread delay: 128 do
    interlude1
  end
  in_thread delay: 160 do
    interlude2
  end
  in_thread delay: 192 do
    interlude3
  end
  in_thread delay: 220 do
    intro_snare
  end
  in_thread delay: 224 do
    intro2
  end
  in_thread delay: 256 do
    intro2
  end
  in_thread delay: 288 do
    melody_bridge
  end
  in_thread delay: 296 do
    melody_bridge
  end
  in_thread delay: 304 do
    melody_bridge
  end
  in_thread delay: 316 do
    intro_snare
  end
  in_thread delay: 320 do
    intro2
  end
  in_thread delay: 352 do
    synth_chords
  end
  in_thread delay: 412 do
    intro_snare
  end
  in_thread delay: 416 do
    intro2
  end
  in_thread delay: 448 do
    intro2
  end
  in_thread delay: 480 do
    interlude1
  end
  in_thread delay: 512 do
    interlude1
  end
  in_thread delay: 544 do
    interlude2
  end
  in_thread delay: 580 do
    intro_snare
  end
  in_thread delay: 584 do
    intro2
  end
  in_thread delay: 616 do
    intro1
  end
end