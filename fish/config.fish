if status is-interactive
	set fish_greeting
	set fish_prompt_pwd_dir_length 0
	function coding_directory
		cd /media/xeltron/main/Coding
	end
	function jadxgui
		cd ~/Software/Jadx/bin/; ./jadx-gui $argv
	end
	function jadx
		cd ~/Software/Jadx/bin/; ./jadx $argv
	end
	function burp_suite
		cd ~/Software/Burp/Burp\ Suite\ Professional\ Edition\ v2020.12.1;java -noverify -javaagent:Dr.FarFar.jar -jar burpsuite_pro_v2020.12.1.jar
	end
	function vman
		man $argv | nvim -RM -c ':set syntax=man' - ;
	end
	function c
		set filenamewithoutextension (echo $argv[1] | cut -f 1 -d '.');
		gcc $argv[1] -o $filenamewithoutextension;
		chmod +x $filenamewithoutextension;
	end
	function rr
		rm -r $argv;
	end
	function rf
		rm -rf $argv;
	end
	function mkdirp
		mkdir -p $argv;
	end
	function rmdirp
		rmdir -p $argv;
	end
	function cf
		xclip -selection clipboard < $argv;
	end
	function ct
		xclip -selection clipboard
	end
	function cr
		cp -r $argv;
	end
	function mvno
		mv -n $argv;
	end
	function deno
		~/.deno/bin/deno $argv;
	end
	fish_vi_key_bindings
end
