.class public Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDone:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 105
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 106
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 107
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 108
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 109
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 110
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 111
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 112
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 114
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 116
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 130
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 482
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 485
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 487
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 504
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 506
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_3

    if-lez v1, :cond_3

    .line 507
    iget v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    .line 508
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0904a3

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 526
    .end local v2    # "msg":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 527
    return-void

    .line 508
    :cond_0
    const v4, 0x7f0904a4

    goto :goto_0

    .line 513
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 515
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_1

    .line 518
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0904a5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 519
    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_1

    .line 523
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 524
    if-lez v1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_1

    .line 523
    :cond_4
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_2

    :cond_5
    move v4, v6

    .line 524
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 323
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    const v12, 0x7f0904a3

    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 414
    :goto_1
    return-object v12

    .line 323
    :cond_0
    const v12, 0x7f0904a4

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_3

    .line 328
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_2

    const v12, 0x7f0904a7

    :goto_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    const v12, 0x7f0904a8

    goto :goto_2

    .line 332
    :cond_3
    const/4 v5, 0x0

    .line 333
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 334
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 335
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 336
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 337
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 338
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 339
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 341
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_4

    const/16 v12, 0x7f

    if-le v3, v12, :cond_5

    .line 342
    :cond_4
    const v12, 0x7f0904ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 344
    :cond_5
    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    .line 345
    add-int/lit8 v8, v8, 0x1

    .line 346
    add-int/lit8 v7, v7, 0x1

    .line 338
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 347
    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_7

    .line 348
    add-int/lit8 v5, v5, 0x1

    .line 349
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 350
    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_8

    .line 351
    add-int/lit8 v5, v5, 0x1

    .line 352
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 354
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 355
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 358
    .end local v3    # "c":C
    :cond_9
    const/high16 v12, 0x20000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_a

    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_d

    .line 360
    :cond_a
    if-gtz v5, :cond_b

    if-lez v10, :cond_c

    .line 363
    :cond_b
    const v12, 0x7f0904a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 366
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 367
    .local v9, "sequence":I
    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_18

    const/4 v12, 0x3

    if-le v9, v12, :cond_18

    .line 369
    const v12, 0x7f0904b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 371
    .end local v9    # "sequence":I
    :cond_d
    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_13

    .line 372
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_e

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0005

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 376
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_f

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0008

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 380
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_10

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0006

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 384
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_11

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0007

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 388
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_12

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0009

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 392
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_18

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e000a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 398
    :cond_13
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_15

    const/4 v1, 0x1

    .line 400
    .local v1, "alphabetic":Z
    :goto_5
    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_16

    const/4 v2, 0x1

    .line 402
    .local v2, "alphanumeric":Z
    :goto_6
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 403
    const v12, 0x7f0904ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 398
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 400
    .restart local v1    # "alphabetic":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_6

    .line 405
    .restart local v2    # "alphanumeric":Z
    :cond_17
    if-eqz v2, :cond_18

    if-nez v8, :cond_18

    .line 406
    const v12, 0x7f0904ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 409
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 410
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_19

    const v12, 0x7f0904af

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_19
    const v12, 0x7f0904aa

    goto :goto_7

    .line 414
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 532
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 535
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 539
    return-void
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    invoke-static {p1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 418
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    if-eqz v6, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "pin":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v6, v7, :cond_3

    .line 426
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    if-nez v0, :cond_2

    .line 428
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 429
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    sget-object v6, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 456
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 457
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 432
    :cond_3
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    .line 433
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 436
    .local v1, "isFallback":Z
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    .line 437
    .local v5, "wasSecureBefore":Z
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extra_require_password"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 440
    .local v3, "required":Z
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 441
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v6, v2, v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Activity;->setResult(I)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 444
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 445
    if-nez v5, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 449
    .end local v1    # "isFallback":Z
    .end local v3    # "required":Z
    .end local v5    # "wasSecureBefore":Z
    :cond_4
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 450
    .local v4, "tmp":Ljava/lang/CharSequence;
    if-eqz v4, :cond_5

    move-object v6, v4

    .line 451
    check-cast v6, Landroid/text/Spannable;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v9, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 453
    :cond_5
    sget-object v6, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 472
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 476
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x7f10004e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 182
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 185
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 186
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 188
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 190
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 192
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 194
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 196
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 199
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 200
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 491
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 495
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 277
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 270
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 543
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 212
    const v8, 0x7f10004e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 213
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v8, 0x7f10004f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 215
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const/high16 v8, 0x40000

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x50000

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x60000

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 220
    const v8, 0x7f100050

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 221
    const v8, 0x7f10004d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 222
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 223
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 228
    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 232
    const v8, 0x7f10004c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 233
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 235
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 236
    .local v2, "currentType":I
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v9, :cond_5

    .end local v2    # "currentType":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 240
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "confirm_credentials"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    .local v1, "confirmCredentials":Z
    if-nez p2, :cond_6

    .line 242
    sget-object v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 243
    if-eqz v1, :cond_1

    .line 244
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v9, 0x3a

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 255
    :cond_1
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 256
    instance-of v8, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 257
    check-cast v5, Lcom/android/settings/SettingsActivity;

    .line 258
    .local v5, "sa":Lcom/android/settings/SettingsActivity;
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_7

    const v3, 0x7f090763

    .line 260
    .local v3, "id":I
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 261
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    .end local v3    # "id":I
    .end local v5    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 217
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "confirmCredentials":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 228
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 236
    .restart local v2    # "currentType":I
    :cond_5
    const/16 v2, 0x12

    goto :goto_2

    .line 248
    .end local v2    # "currentType":I
    .restart local v1    # "confirmCredentials":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v8, "first_pin"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 249
    const-string v8, "ui_stage"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "state":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 251
    invoke-static {v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 252
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_3

    .line 258
    .end local v6    # "state":Ljava/lang/String;
    .restart local v5    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_7
    const v3, 0x7f090765

    goto :goto_4
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 463
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 467
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 306
    .local v0, "previousStage":Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 307
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 311
    if-eq v0, p1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    return-void
.end method
