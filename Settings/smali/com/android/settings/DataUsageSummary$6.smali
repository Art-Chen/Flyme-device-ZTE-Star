.class Lcom/android/settings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1159
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 1162
    .local v1, "dataEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "currentTab":Ljava/lang/String;
    const-string v4, "mobile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1164
    :cond_1
    if-eqz v1, :cond_4

    .line 1165
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v2}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1173
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "dataEnabled":Z
    :cond_3
    move v1, v3

    .line 1161
    goto :goto_1

    .line 1169
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "dataEnabled":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_2
.end method
