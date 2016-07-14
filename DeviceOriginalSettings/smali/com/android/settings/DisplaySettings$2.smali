.class Lcom/flyme/DeviceOriginalSettings/DisplaySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->access$000(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)V

    .line 126
    return-void
.end method
