.class Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 301
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 315
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$Stage;

    # invokes: Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$Stage;)V

    .line 316
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 305
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09078b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 306
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 307
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$800(Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f09078c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-void
.end method
