.class Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/flyme/DeviceOriginalSettings/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/flyme/DeviceOriginalSettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;)Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 234
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->access$200(Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;->access$200(Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 240
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 234
    goto :goto_0

    .line 238
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
