.class Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 322
    return-void
.end method
