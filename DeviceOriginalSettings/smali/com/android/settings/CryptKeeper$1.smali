.class Lcom/flyme/DeviceOriginalSettings/CryptKeeper$1;
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
    .line 141
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$1;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$1;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->access$000(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;Ljava/lang/Integer;)V

    .line 145
    return-void
.end method
