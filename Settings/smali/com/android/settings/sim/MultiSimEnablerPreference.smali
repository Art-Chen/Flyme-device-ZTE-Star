.class public Lcom/android/settings/sim/MultiSimEnablerPreference;
.super Landroid/preference/SwitchPreference;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/MultiSimEnablerPreference$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private mClicking:Z

.field private mColorStrings:[Ljava/lang/String;

.field private mConfirmDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfirmationDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mParentHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mSlotId:I

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitch:Landroid/widget/Switch;

.field private mTargetState:Ljava/lang/Boolean;

.field private mTintArr:[I

.field private mTintSelectorPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    .line 88
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 89
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 410
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$3;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 422
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$4;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$4;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 431
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$5;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$5;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 443
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$6;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference$6;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 108
    iput p4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    .line 109
    iput-object p2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 110
    iput-object p3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 111
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintArr:[I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mColorStrings:[Ljava/lang/String;

    .line 114
    iput v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintSelectorPos:I

    .line 116
    invoke-virtual {p0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setPersistent(Z)V

    .line 118
    const v0, 0x7f090bef

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/MultiSimEnablerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/sim/MultiSimEnablerPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/MultiSimEnablerPreference;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintArr:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/sim/MultiSimEnablerPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/sim/MultiSimEnablerPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->updateCheckedState(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/sim/MultiSimEnablerPreference;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimEnablerPreference;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->processSetUiccDone()V

    return-void
.end method

.method private configureSubscription(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    const-string v3, "APM is on, EXIT!"

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 309
    const v3, 0x7f090257

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showToast(I)V

    .line 336
    :goto_0
    return v2

    .line 312
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 313
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 314
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call state for phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not idle, EXIT!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 317
    const v3, 0x7f090258

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showToast(I)V

    goto :goto_0

    .line 312
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    .end local v1    # "subId":[I
    :cond_2
    if-nez p1, :cond_4

    .line 323
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getActivatedSubInfoCount()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 324
    const-string v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showDisableConfirmationDialog()V

    :goto_2
    move v2, v3

    .line 336
    goto :goto_0

    .line 327
    :cond_3
    const-string v3, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 328
    const v3, 0x7f090259

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showToast(I)V

    goto :goto_0

    .line 332
    :cond_4
    const-string v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest(Z)V

    goto :goto_2
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 404
    :cond_0
    return-void
.end method

.method private getActivatedSubInfoCount()I
    .locals 7

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "activeSubInfoCount":I
    iget-object v5, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 296
    .local v4, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 297
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v4, :cond_1

    .line 298
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 299
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method private getSimDisplayName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentSubValid()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->hasCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v3

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 262
    .local v2, "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_0

    .line 266
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 267
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_2

    iget v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 268
    iput-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 273
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    iget v4, v4, Landroid/telephony/SubscriptionInfo;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSimEnablerPreference("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method private processSetUiccDone()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    .line 360
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 361
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    .line 363
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 364
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 243
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    return-void
.end method

.method private sendSubConfigurationRequest(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;

    .line 349
    invoke-direct {p0, p1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->showProgressDialog(Z)V

    .line 350
    if-eqz p1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->activateSubId(I)V

    .line 356
    :goto_1
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    goto :goto_1
.end method

.method private showDisableConfirmationDialog()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 371
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getSimDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09025d

    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    .line 379
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void
.end method

.method private showProgressDialog(Z)V
    .locals 6
    .param p1, "enabling"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 384
    if-eqz p1, :cond_0

    const v0, 0x7f09025b

    .line 387
    .local v0, "stateTextResId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V

    .line 389
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 390
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getSimDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 396
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7530

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 397
    return-void

    .line 384
    .end local v0    # "stateTextResId":I
    :cond_0
    const v0, 0x7f09025c

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 341
    return-void
.end method

.method private updateCheckedState(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 290
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 291
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;

    .line 149
    :cond_0
    return-void
.end method

.method public createEditDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 155
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04007e

    invoke-virtual {v5, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, "dialogLayout":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 158
    const v9, 0x7f10014a

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 159
    .local v6, "nameText":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v9, 0x7f10014b

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 162
    .local v8, "tintSpinner":Landroid/widget/Spinner;
    new-instance v0, Lcom/android/settings/sim/MultiSimEnablerPreference$SelectColorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0400de

    iget-object v11, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mColorStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v9, v10, v11}, Lcom/android/settings/sim/MultiSimEnablerPreference$SelectColorAdapter;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 164
    .local v0, "adapter":Lcom/android/settings/sim/MultiSimEnablerPreference$SelectColorAdapter;
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Lcom/android/settings/sim/MultiSimEnablerPreference$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 165
    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintArr:[I

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 167
    iget-object v9, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintArr:[I

    aget v9, v9, v4

    iget-object v10, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 168
    invoke-virtual {v8, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 169
    iput v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintSelectorPos:I

    .line 173
    :cond_0
    new-instance v9, Lcom/android/settings/sim/MultiSimEnablerPreference$1;

    invoke-direct {v9, p0, v8}, Lcom/android/settings/sim/MultiSimEnablerPreference$1;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 184
    const v9, 0x7f10002b

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 185
    .local v7, "numberView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v9, 0x7f10014c

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 188
    .local v2, "carrierView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090bf3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    const v9, 0x7f090422

    new-instance v10, Lcom/android/settings/sim/MultiSimEnablerPreference$2;

    invoke-direct {v10, p0, v6, v8}, Lcom/android/settings/sim/MultiSimEnablerPreference$2;-><init>(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    const v9, 0x7f09041f

    invoke-virtual {v1, v9, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 211
    return-void

    .line 166
    .end local v2    # "carrierView":Landroid/widget/TextView;
    .end local v7    # "numberView":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 217
    const v0, 0x1020366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    .line 218
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 221
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mClicking:Z

    .line 238
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mClicking:Z

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 225
    iget-boolean v1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mClicking:Z

    if-eqz v1, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 232
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 229
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 230
    .local v0, "checked":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->configureSubscription(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->isCurrentSubValid()Z

    move-result v1

    .line 125
    .local v1, "isSubValid":Z
    invoke-virtual {p0, v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setEnabled(Z)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update() isSubValid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 128
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090be5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getSimDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    iget v3, v3, Landroid/telephony/SubscriptionInfo;->mStatus:I

    if-ne v3, v0, :cond_0

    .line 135
    .local v0, "isActivated":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;->updateCheckedState(Z)V

    .line 140
    .end local v0    # "isActivated":Z
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 134
    goto :goto_0

    .line 137
    :cond_1
    const v2, 0x7f090bf0

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setSummary(I)V

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
