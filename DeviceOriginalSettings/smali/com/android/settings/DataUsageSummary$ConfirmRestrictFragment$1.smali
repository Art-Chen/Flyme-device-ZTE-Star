.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment;)V
    .locals 0

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2165
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    .line 2166
    .local v0, "target":Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 2169
    :cond_0
    return-void
.end method
