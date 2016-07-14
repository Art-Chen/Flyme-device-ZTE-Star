.class public Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;
.super Landroid/app/AlertDialog;
.source "LightSettingsDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    }
.end annotation


# instance fields
.field private mColorPanel:Landroid/widget/LinearLayout;

.field private mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

.field private mHexColorInput:Landroid/widget/EditText;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLedHandler:Landroid/os/Handler;

.field private mLedLastColor:I

.field private mLedLastSpeedOff:I

.field private mLedLastSpeedOn:I

.field private mLightsDialogDivider:Landroid/view/View;

.field private mListener:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;

.field private mNewColor:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPanelView;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPulseSpeedOff:Landroid/widget/Spinner;

.field private mPulseSpeedOn:Landroid/widget/Spinner;

.field private mReadyForLed:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I
    .param p3, "initialSpeedOn"    # I
    .param p4, "initialSpeedOff"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$1;-><init>(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 254
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$2;-><init>(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->init(Landroid/content/Context;IIIZ)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->updateLed()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private init(Landroid/content/Context;IIIZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "speedOn"    # I
    .param p4, "speedOff"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    .line 114
    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 117
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 118
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->setUp(IIIZ)V

    .line 119
    return-void
.end method

.method private setUp(IIIZ)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "speedOn"    # I
    .param p3, "speedOff"    # I
    .param p4, "onOffChangeable"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040049

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "layout":Landroid/view/View;
    const v2, 0x7f1000c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    .line 135
    const v2, 0x7f1000c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPanel:Landroid/widget/LinearLayout;

    .line 136
    const v2, 0x7f1000c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    .line 137
    const v2, 0x7f1000ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPanelView;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPanelView;

    .line 138
    const v2, 0x7f1000cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLightsDialogDivider:Landroid/view/View;

    .line 140
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->setOnColorChangedListener(Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;)V

    .line 141
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v2, p1, v3}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 143
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    const v2, 0x7f1000cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    .line 145
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    const v2, 0x7f0c0080

    const v4, 0x7f0c0081

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 149
    .local v1, "pulseSpeedAdapter":Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 150
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 151
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 153
    const v2, 0x7f1000ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    .line 154
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    .end local v1    # "pulseSpeedAdapter":Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    const v2, 0x7f0c0082

    const v4, 0x7f0c0083

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 157
    .restart local v1    # "pulseSpeedAdapter":Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 159
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v2, p4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 162
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    if-eq p2, v3, :cond_1

    if-eqz p4, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->setView(Landroid/view/View;)V

    .line 165
    const v2, 0x7f09011e

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->setTitle(I)V

    .line 167
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x112003e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v2, v6}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLightsDialogDivider:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_0
    iput-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    .line 175
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 176
    return-void

    .line 162
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateLed()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 261
    iget-boolean v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    if-nez v5, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v5

    const v6, 0xffffff

    and-int v2, v5, v6

    .line 267
    .local v2, "color":I
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v4

    .line 269
    .local v4, "speedOn":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v3

    .line 275
    .local v3, "speedOff":I
    :goto_1
    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    if-ne v5, v2, :cond_2

    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    if-eq v5, v3, :cond_0

    .line 281
    :cond_2
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 284
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    iput v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 287
    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    .line 288
    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "android.forceShowLights"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 295
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 297
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 271
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "speedOff":I
    .end local v4    # "speedOn":I
    :cond_3
    const/4 v4, 0x1

    .line 272
    .restart local v4    # "speedOn":I
    const/4 v3, 0x0

    .restart local v3    # "speedOff":I
    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 398
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "hexColor":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 402
    .local v0, "color":I
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v2, v0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->setColor(I)V

    .line 406
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPanelView;

    invoke-virtual {v2, v0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPanelView;->setColor(I)V

    .line 407
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 408
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mListener:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_1

    .line 409
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mListener:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v2, v0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v0    # "color":I
    :cond_1
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 390
    return-void
.end method

.method public dismissLed()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 305
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getPulseSpeedOff()I
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPulseSpeedOn()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onColorChanged(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    .line 220
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v1

    .line 221
    .local v1, "hasAlpha":Z
    if-eqz v1, :cond_1

    const-string v0, "%08x"

    .line 222
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    .line 224
    .local v2, "mask":I
    :goto_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPanelView;

    invoke-virtual {v3, p1}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPanelView;->setColor(I)V

    .line 225
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    and-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mListener:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mListener:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v3, p1}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 232
    return-void

    .line 221
    .end local v0    # "format":Ljava/lang/String;
    .end local v2    # "mask":I
    :cond_1
    const-string v0, "%06x"

    goto :goto_0

    .line 222
    .restart local v0    # "format":Ljava/lang/String;
    :cond_2
    const v2, 0xffffff

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 419
    if-nez p2, :cond_0

    .line 420
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 421
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 423
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 427
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 203
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    const-string v1, "LightSettingsDialog:color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 204
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "LightSettingsDialog:color"

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 215
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 216
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 209
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->dismissLed()V

    .line 210
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 394
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 235
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-direct {v4, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 236
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 237
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method
