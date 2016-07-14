.class Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;
.super Ljava/lang/Object;
.source "SoundDolbyProfilePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Profile"
.end annotation


# instance fields
.field private mIconDisabled:I

.field private mIconNormal:I

.field private mIconSelected:I

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;III)V
    .locals 0
    .param p2, "iconSelected"    # I
    .param p3, "iconNormal"    # I
    .param p4, "iconDisabled"    # I

    .prologue
    .line 342
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;->mIconSelected:I

    .line 344
    iput p3, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;->mIconNormal:I

    .line 345
    iput p4, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;->mIconDisabled:I

    .line 346
    return-void
.end method


# virtual methods
.method public getIcon(ZZ)I
    .locals 1
    .param p1, "selected"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 349
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;->mIconSelected:I

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;->mIconNormal:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundDolbyProfilePreference$Profile;->mIconDisabled:I

    goto :goto_0
.end method
