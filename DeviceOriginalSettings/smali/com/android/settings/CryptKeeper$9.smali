.class Lcom/flyme/DeviceOriginalSettings/CryptKeeper$9;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->updateEmergencyCallButtonState()V
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
    .line 939
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$9;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$9;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    # invokes: Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->access$2000(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;)V

    .line 944
    return-void
.end method
