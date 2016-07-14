.class Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 1502
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;)V

    .line 1503
    return-void
.end method
