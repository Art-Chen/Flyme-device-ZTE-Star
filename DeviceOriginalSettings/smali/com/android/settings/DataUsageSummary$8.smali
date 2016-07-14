.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$8;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1194
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$8;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1100(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1196
    .local v0, "restrictBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1200
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$8;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V

    .line 1204
    :goto_1
    return-void

    .end local v0    # "restrictBackground":Z
    :cond_0
    move v0, v1

    .line 1194
    goto :goto_0

    .line 1202
    .restart local v0    # "restrictBackground":Z
    :cond_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$8;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1200(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Z)V

    goto :goto_1
.end method
