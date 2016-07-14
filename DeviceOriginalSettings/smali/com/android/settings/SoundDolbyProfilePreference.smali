.class public Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;
.super Landroid/preference/Preference;
.source "SoundDolbyProfilePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$1;,
        Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;,
        Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;
    }
.end annotation


# static fields
.field private static mDsClient:Landroid/dolby/DsClient;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mSelectedPosition:I

    .line 107
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/DolbyAssets;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mSelectedPosition:I

    .line 113
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/DolbyAssets;->init(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method static synthetic access$100()Landroid/dolby/DsClient;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDsClient:Landroid/dolby/DsClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->onDsClientError()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;

    .prologue
    .line 36
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mSelectedPosition:I

    return v0
.end method

.method public static getCustomModifyFlag(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "bModified_Custom1":Z
    const/4 v2, 0x0

    .line 68
    .local v2, "bModified_Custom2":Z
    if-eqz p0, :cond_3

    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, "packageContext":Landroid/content/Context;
    const-string v5, "com.dolby.ds1appUI"

    .line 71
    .local v5, "packageName":Ljava/lang/String;
    const-string v0, "DsUICustomProfile"

    .line 75
    .local v0, "PREFS_NAME":Ljava/lang/String;
    const-wide/16 v8, 0x64

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 76
    const-string v8, "com.dolby.ds1appUI"

    const/4 v9, 0x2

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 85
    :goto_0
    if-eqz v4, :cond_0

    .line 86
    const-string v8, "DsUICustomProfile"

    const/4 v9, 0x4

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 87
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string v8, "bModified_Custom1"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 88
    const-string v8, "bModified_Custom2"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 95
    .end local v0    # "PREFS_NAME":Ljava/lang/String;
    .end local v4    # "packageContext":Landroid/content/Context;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 96
    .local v6, "ret":I
    if-ne v11, v1, :cond_1

    .line 97
    or-int/lit8 v6, v6, 0x1

    .line 99
    :cond_1
    if-ne v11, v2, :cond_2

    .line 100
    or-int/lit8 v6, v6, 0x2

    .line 102
    :cond_2
    return v6

    .line 77
    .end local v6    # "ret":I
    .restart local v0    # "PREFS_NAME":Ljava/lang/String;
    .restart local v4    # "packageContext":Landroid/content/Context;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0    # "PREFS_NAME":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "packageContext":Landroid/content/Context;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v8, "SoundDolbyProfilePreference"

    const-string v9, "context == null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onDsClientError()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public static setDsClient(Landroid/dolby/DsClient;)V
    .locals 0
    .param p0, "dsClient"    # Landroid/dolby/DsClient;

    .prologue
    .line 55
    sput-object p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDsClient:Landroid/dolby/DsClient;

    .line 56
    return-void
.end method

.method private showProfilesPopup()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 122
    sget-object v2, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDsClient:Landroid/dolby/DsClient;

    .line 123
    .local v2, "dsClient":Landroid/dolby/DsClient;
    if-nez v2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v7

    iput v7, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mSelectedPosition:I

    .line 130
    invoke-virtual {v2}, Landroid/dolby/DsClient;->getDsOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    .local v1, "dolbyOn":Z
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 139
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040053

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 140
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f1000e8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    .line 141
    new-instance v7, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

    invoke-direct {v7, p0, v8}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;-><init>(Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$1;)V

    iput-object v7, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mListAdapter:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

    .line 142
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mListAdapter:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    move-object v7, p0

    :goto_1
    invoke-virtual {v9, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 145
    const v7, 0x7f1000e9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 146
    .local v5, "vPower":Landroid/widget/CheckBox;
    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    invoke-virtual {p0, v5, v1}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 150
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "d":Landroid/app/Dialog;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 152
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 153
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 154
    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDialog:Landroid/app/Dialog;

    .line 155
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 131
    .end local v0    # "d":Landroid/app/Dialog;
    .end local v1    # "dolbyOn":Z
    .end local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v5    # "vPower":Landroid/widget/CheckBox;
    .end local v6    # "view":Landroid/view/View;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->onDsClientError()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "dolbyOn":Z
    .restart local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v6    # "view":Landroid/view/View;
    :cond_1
    move-object v7, v8

    .line 143
    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz p2, :cond_4

    const v2, 0x7f090cf9

    :goto_0
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 200
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDsClient:Landroid/dolby/DsClient;

    .line 201
    .local v0, "dsClient":Landroid/dolby/DsClient;
    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/dolby/DsClient;->setDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mListAdapter:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mListAdapter:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;->notifyDataSetChanged()V

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 215
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    if-eqz p2, :cond_5

    move-object v2, p0

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    :cond_2
    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 219
    :cond_3
    return-void

    .line 198
    .end local v0    # "dsClient":Landroid/dolby/DsClient;
    :cond_4
    const v2, 0x7f090cfa

    goto :goto_0

    .line 204
    .restart local v0    # "dsClient":Landroid/dolby/DsClient;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->onDsClientError()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v2, v3

    .line 215
    goto :goto_2
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->showProfilesPopup()V

    .line 119
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDialog:Landroid/app/Dialog;

    .line 191
    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mList:Landroid/widget/ListView;

    .line 192
    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mListAdapter:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

    .line 193
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mSelectedPosition:I

    if-ne p3, v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mDsClient:Landroid/dolby/DsClient;

    .line 171
    .local v0, "dsClient":Landroid/dolby/DsClient;
    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/dolby/DsClient;->setSelectedProfile(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    iput p3, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mSelectedPosition:I

    .line 184
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->mListAdapter:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$ProfilesAdapter;->notifyDataSetChanged()V

    .line 185
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;->onDsClientError()V

    goto :goto_0
.end method
