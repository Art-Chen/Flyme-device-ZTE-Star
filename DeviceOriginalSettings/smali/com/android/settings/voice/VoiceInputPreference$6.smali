.class Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference$6;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference$6;->this$0:Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference$6;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputPreference$6;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 201
    return-void
.end method
