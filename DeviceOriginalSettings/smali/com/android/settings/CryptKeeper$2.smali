.class Lcom/flyme/DeviceOriginalSettings/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$2;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$2;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    # getter for: Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->access$100(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 155
    return-void
.end method
