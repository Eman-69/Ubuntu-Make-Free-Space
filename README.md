<h1><strong>HOW TO RUN:</strong></h1>

<strong>sudo chmod +x freespace.sh</strong><br>
<strong>sudo chmod +x freespaceq.sh</strong><br>

<strong>./freespace.sh</strong><br>
<strong>./freespace1.sh</strong>


<hr>


<ul>
    <li>
        <p><strong>apt-get autoremove:</strong></p>
        <p>It removes automatically installed packages that are no longer needed as dependencies for other software. This helps keep the system clean and free up disk space. Always review the list of packages before confirming their removal to avoid unintended deletions.</p>
    </li>
    <li>
        <p><strong>apt-get clean:</strong></p>
        <p>Frees up disk space by removing downloaded package files (.deb) from the local package cache (<code>/var/cache/apt/archives/</code>). This operation mainly affects the partition where the system is installed.</p>
    </li>
    <li>
        <p><strong>sudo journalctl --vacuum-time=3d:</strong></p>
        <p>Cleans up the journal by removing log data older than 3 days. This helps to manage disk space usage by limiting the size of the log files. This operation mainly affects the partition where the journal is stored.</p>
    </li>
    <li>
        <p><strong>sudo rm -rf ~/.cache/thumbnails/*:</strong></p>
        <p>Deletes all files and directories within the thumbnails directory located in the user's cache directory (<code>~/.cache</code>). This primarily affects the partition where the user's home directory resides.</p>
    </li>
    <li>
        <p><strong>Removing old revisions of snaps:</strong></p>
        <p>This removes old revisions of snap packages, helping to free up disk space and keep the system tidy. This operation mainly affects the partition where snap packages are stored.</p>
    </li>
</ul>
