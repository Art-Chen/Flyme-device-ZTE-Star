.class Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;

    .line 123
    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 124
    iput-object p3, p0, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 126
    invoke-virtual {p0, v6}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->setPersistent(Z)V

    .line 128
    iput-boolean v7, p0, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 129
    # getter for: Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;)Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 130
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_1

    .line 131
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0, v7}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    .line 133
    invoke-virtual {p0, v6}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->setEnabled(Z)V

    .line 140
    :goto_0
    iput-boolean v6, p0, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 141
    return-void

    .line 135
    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0, v6}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 146
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings;)Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/net/DataUsageMeteredSettings$MeteredPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    .line 149
    :cond_0
    return-void
.end method