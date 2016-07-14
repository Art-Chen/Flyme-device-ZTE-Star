.class public Lcom/flyme/DeviceOriginalSettings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 108
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$1;-><init>(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;-><init>(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Lcom/flyme/DeviceOriginalSettings/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRetryCounter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 514
    if-ltz p2, :cond_0

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "displayMsg":Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 522
    .end local v0    # "displayMsg":Ljava/lang/String;
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09066d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;II)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "requestType"    # I
    .param p3, "attemptsRemaining"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const v3, 0x7f09066a

    .line 406
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_8

    .line 407
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "exception":Ljava/lang/Throwable;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 409
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 411
    if-ne p2, v5, :cond_1

    .line 412
    const v1, 0x7f090220

    .line 416
    .local v1, "id":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 457
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v1    # "id":I
    :cond_0
    :goto_1
    return-void

    .line 414
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f09021f

    .restart local v1    # "id":I
    goto :goto_0

    .line 418
    .end local v1    # "id":I
    :cond_2
    if-ne p2, v5, :cond_6

    .line 419
    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_4

    .line 420
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 421
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 426
    :cond_3
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 431
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 432
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 437
    :cond_5
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 443
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_7

    .line 444
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 448
    :cond_7
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09066b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 454
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :cond_8
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private iccLockChanged(Ljava/lang/Throwable;I)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 461
    if-nez p1, :cond_1

    .line 462
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 474
    :goto_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 475
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->resetDialogState()V

    .line 476
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 471
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    goto :goto_1
.end method

.method private iccPinChanged(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0, p2}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    .line 487
    :goto_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->resetDialogState()V

    .line 488
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09066c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 497
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 499
    :cond_0
    const/4 v0, 0x0

    .line 501
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 507
    const/4 v0, 0x2

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 508
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 509
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->setDialogValues()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 511
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f090667

    .line 302
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 303
    const-string v0, ""

    .line 304
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 329
    return-void

    .line 306
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090661

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090662

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090663

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 312
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090664

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090665

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :pswitch_3
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090666

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->setDialogValues()V

    .line 298
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 394
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 397
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 398
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 491
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 492
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 494
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->finish()V

    .line 218
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 172
    .local v1, "mActionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 173
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 176
    :cond_1
    const v4, 0x7f06004a

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 178
    const-string v4, "sim_pin"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    .line 179
    const-string v4, "sim_toggle"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 180
    if-eqz p1, :cond_2

    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 183
    const-string v4, "dialogPin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 184
    const-string v4, "dialogError"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 185
    const-string v4, "enableState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    .line 188
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    .line 205
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    invoke-virtual {v4, p0}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setOnPinEnteredListener(Lcom/flyme/DeviceOriginalSettings/EditPinPreference$OnPinEnteredListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 214
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 215
    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 216
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 217
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->updatePreferences()V

    goto/16 :goto_0

    .line 190
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :pswitch_0
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 194
    :pswitch_1
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 195
    const-string v4, "newPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->finish()V

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 254
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    return-void
.end method

.method public onPinEntered(Lcom/flyme/DeviceOriginalSettings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/flyme/DeviceOriginalSettings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 332
    if-nez p2, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->resetDialogState()V

    .line 373
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090668

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 344
    :cond_1
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 350
    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 351
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 352
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 357
    const/4 v0, 0x4

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 358
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 362
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090669

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 364
    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 365
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 366
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 368
    :cond_2
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 369
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 377
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    .line 381
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 382
    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    .line 383
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 388
    :goto_0
    return v0

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 385
    const/4 v1, 0x2

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->showPinDialog()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "dialogState"

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 274
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
