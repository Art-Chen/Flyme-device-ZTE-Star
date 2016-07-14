.class public Lcom/flyme/DeviceOriginalSettings/cyanogenmod/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private configureCPU(Landroid/content/Context;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 87
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 89
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "pref_cpu_set_on_boot"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 90
    const-string v9, "BootReceiver"

    const-string v10, "CPU restore disabled by user preference."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v9, "pref_cpu_gov"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "governor":Ljava/lang/String;
    const-string v9, "pref_cpu_freq_min"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "minFrequency":Ljava/lang/String;
    const-string v9, "pref_cpu_freq_max"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "maxFrequency":Ljava/lang/String;
    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v9}, Lcom/flyme/DeviceOriginalSettings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "availableFrequenciesLine":Ljava/lang/String;
    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v9}, Lcom/flyme/DeviceOriginalSettings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "availableGovernorsLine":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v3, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    :cond_2
    const/4 v7, 0x1

    .line 101
    .local v7, "noSettings":Z
    :cond_3
    const/4 v2, 0x0

    .line 102
    .local v2, "frequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 104
    .local v4, "governors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    .line 105
    const-string v9, "BootReceiver"

    const-string v10, "No CPU settings saved. Nothing to restore."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_4
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/BootReceiver;->initFreqCapFiles(Landroid/content/Context;)V

    .line 108
    if-eqz v1, :cond_5

    .line 109
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 111
    :cond_5
    if-eqz v0, :cond_6

    .line 112
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 114
    :cond_6
    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 115
    sget-object v9, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/flyme/DeviceOriginalSettings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    :cond_7
    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 118
    sget-object v9, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/flyme/DeviceOriginalSettings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    :cond_8
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 121
    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v9, v3}, Lcom/flyme/DeviceOriginalSettings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    :cond_9
    const-string v9, "BootReceiver"

    const-string v10, "CPU settings restored."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private configureIOSched(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 130
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_io_sched_set_on_boot"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    const-string v5, "BootReceiver"

    const-string v6, "IOSched restore disabled by user preference."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v5, "pref_io_sched"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "ioscheduler":Ljava/lang/String;
    const-string v5, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "availableIOSchedulersLine":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 138
    .local v3, "noSettings":Z
    :cond_2
    const/4 v2, 0x0

    .line 140
    .local v2, "ioschedulers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 141
    const-string v5, "BootReceiver"

    const-string v6, "No I/O scheduler settings saved. Nothing to restore."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_3
    if-eqz v0, :cond_4

    .line 144
    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 146
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    const-string v5, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v5, v1}, Lcom/flyme/DeviceOriginalSettings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    :cond_5
    const-string v5, "BootReceiver"

    const-string v6, "I/O scheduler settings restored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initFreqCapFiles(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-boolean v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090321

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 50
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 52
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/os/PowerManager;->hasPowerProfiles()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, "sys.cpufreq.restored"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string v1, "sys.cpufreq.restored"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/BootReceiver;->configureCPU(Landroid/content/Context;)V

    .line 62
    :cond_0
    :goto_0
    const-string v1, "sys.iosched.restored"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    const-string v1, "sys.iosched.restored"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/BootReceiver;->configureIOSched(Landroid/content/Context;)V

    .line 71
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->restore(Landroid/content/Context;)V

    .line 72
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->restoreKeyDisabler(Landroid/content/Context;)V

    .line 73
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayGamma;->restore(Landroid/content/Context;)V

    .line 74
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/hardware/VibratorIntensity;->restore(Landroid/content/Context;)V

    .line 75
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings;->restore(Landroid/content/Context;)V

    .line 76
    return-void

    .line 59
    :cond_2
    const-string v1, "sys.cpufreq.restored"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "sys.iosched.restored"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
