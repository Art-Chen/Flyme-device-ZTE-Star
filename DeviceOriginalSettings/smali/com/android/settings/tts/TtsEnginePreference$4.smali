.class Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference$4;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference$4;->this$0:Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference$4;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference$4;->this$0:Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference$4;->val$buttonView:Landroid/widget/CompoundButton;

    # invokes: Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;->access$400(Lcom/flyme/DeviceOriginalSettings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V

    .line 227
    return-void
.end method
