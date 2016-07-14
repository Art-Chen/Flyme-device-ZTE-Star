.class Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 90
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 95
    return-void
.end method
