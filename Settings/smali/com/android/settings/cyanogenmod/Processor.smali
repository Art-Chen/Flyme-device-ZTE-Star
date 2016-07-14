.class public Lcom/android/settings/cyanogenmod/Processor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Processor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;
    }
.end annotation


# static fields
.field private static FREQ_CUR_FILE:Ljava/lang/String;

.field public static FREQ_MAX_FILE:Ljava/lang/String;

.field public static FREQ_MIN_FILE:Ljava/lang/String;

.field protected static freqCapFilesInitialized:Z


# instance fields
.field private mCpuInfoHandler:Landroid/os/Handler;

.field private mCpuInfoThread:Landroid/os/HandlerThread;

.field private mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

.field private mCurFrequencyPref:Landroid/preference/Preference;

.field private mGovernorFormat:Ljava/lang/String;

.field private mGovernorPref:Landroid/preference/ListPreference;

.field private mMaxFrequencyFormat:Ljava/lang/String;

.field private mMaxFrequencyPref:Landroid/preference/ListPreference;

.field private mMinFrequencyFormat:Ljava/lang/String;

.field private mMinFrequencyPref:Landroid/preference/ListPreference;

.field private mUpdateCpuFreqValues:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    sput-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    .line 55
    sput-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/android/settings/cyanogenmod/Processor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/Processor$1;-><init>(Lcom/android/settings/cyanogenmod/Processor;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mUpdateCpuFreqValues:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/Processor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/Processor;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/cyanogenmod/Processor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mUpdateCpuFreqValues:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/cyanogenmod/Processor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/Processor;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/Processor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/Processor;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/cyanogenmod/Processor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/cyanogenmod/Processor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/cyanogenmod/Processor;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/cyanogenmod/Processor;)Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/Processor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    return-object v0
.end method

.method private initFreqCapFiles()V
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/settings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    const v0, 0x7f090321

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    .line 132
    const v0, 0x7f090322

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    goto :goto_0
.end method

.method private toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mhzString"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->initFreqCapFiles()V

    .line 142
    const v8, 0x7f090284

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    .line 143
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    .line 144
    const v8, 0x7f090288

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    .line 146
    new-array v0, v12, [Ljava/lang/String;

    .line 147
    .local v0, "availableFrequencies":[Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    .line 153
    .local v2, "availableGovernors":[Ljava/lang/String;
    const v8, 0x7f06003a

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Processor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 157
    .local v6, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v8, "pref_cpu_gov"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    .line 158
    const-string v8, "pref_cpu_freq_cur"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    .line 159
    const-string v8, "pref_cpu_freq_min"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    .line 160
    const-string v8, "pref_cpu_freq_max"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    .line 164
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "temp":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "availableGovernorsLine":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 165
    .end local v3    # "availableGovernorsLine":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :goto_0
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "availableFrequenciesLine":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 179
    .end local v1    # "availableFrequenciesLine":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 180
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 216
    :goto_1
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 217
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    sput-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    .line 220
    :cond_2
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "temp":Ljava/lang/String;
    if-nez v7, :cond_b

    .line 221
    .end local v7    # "temp":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    :goto_2
    return-void

    .line 168
    .restart local v3    # "availableGovernorsLine":Ljava/lang/String;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_4
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 171
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 172
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v7, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 183
    .end local v3    # "availableGovernorsLine":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .restart local v1    # "availableFrequenciesLine":Ljava/lang/String;
    :cond_5
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 185
    array-length v8, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 186
    .local v4, "frequencies":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v8, v4

    if-ge v5, v8, :cond_6

    .line 187
    aget-object v8, v0, v5

    invoke-direct {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 186
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 191
    :cond_6
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "temp":Ljava/lang/String;
    if-nez v7, :cond_9

    .line 192
    .end local v7    # "temp":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 203
    :goto_4
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "temp":Ljava/lang/String;
    if-nez v7, :cond_a

    .line 204
    .end local v7    # "temp":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 195
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 196
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 197
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 198
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4

    .line 207
    :cond_a
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 208
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 209
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 224
    .end local v1    # "availableFrequenciesLine":Ljava/lang/String;
    .end local v4    # "frequencies":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_b
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "CPUInfoThread"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoThread:Landroid/os/HandlerThread;

    .line 227
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoHandler:Landroid/os/Handler;

    .line 229
    new-instance v8, Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;-><init>(Lcom/android/settings/cyanogenmod/Processor;Lcom/android/settings/cyanogenmod/Processor$1;)V

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuUiUpdate:Lcom/android/settings/cyanogenmod/Processor$CpuUiUpdate;

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 256
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mUpdateCpuFreqValues:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 259
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->initFreqCapFiles()V

    move-object v2, p2

    .line 261
    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "newValue":Ljava/lang/String;
    const-string v1, ""

    .line 264
    .local v1, "fname":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 265
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    .line 266
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 273
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 274
    move-object v0, v1

    .line 275
    .local v0, "file":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 276
    .local v3, "nrcpus":I
    if-le v3, v4, :cond_1

    .line 277
    new-instance v6, Lcom/android/settings/cyanogenmod/Processor$2;

    invoke-direct {v6, p0, v3, v0, v2}, Lcom/android/settings/cyanogenmod/Processor$2;-><init>(Lcom/android/settings/cyanogenmod/Processor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/settings/cyanogenmod/Processor$2;->start()V

    .line 343
    :cond_1
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_5

    .line 344
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    .end local v0    # "file":Ljava/lang/String;
    .end local v3    # "nrcpus":I
    :cond_2
    :goto_1
    return v4

    .line 267
    :cond_3
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 268
    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_4
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    .line 270
    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    goto :goto_0

    .line 345
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v3    # "nrcpus":I
    :cond_5
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_6

    .line 346
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 348
    :cond_6
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    .line 349
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v0    # "file":Ljava/lang/String;
    .end local v3    # "nrcpus":I
    :cond_7
    move v4, v5

    .line 354
    goto :goto_1

    :cond_8
    move v4, v5

    .line 357
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->initFreqCapFiles()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCpuInfoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mUpdateCpuFreqValues:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    :cond_0
    return-void
.end method
