.class Lcom/android/settings/SoundSettings$1;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartingSample()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 124
    return-void
.end method
