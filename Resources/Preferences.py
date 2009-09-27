"""
Copyright 2009 Olivier Belanger

This file is part of SoundGrain.

SoundGrain is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

SoundGrain is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with SoundGrain.  If not, see <http://www.gnu.org/licenses/>.
"""

import wx
import Settings
from constants import BACKGROUND_COLOUR

class Preferences(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, parent, -1, "Preferences")

        if wx.Platform == '__WXMAC__':
            self.MacSetMetalAppearance(True)

        menuBar = wx.MenuBar()
        self.menu1 = wx.Menu()
        self.menu1.Append(1, 'Close\tCtrl+W', "")
        menuBar.Append(self.menu1, "&File")

        self.SetMenuBar(menuBar)

        self.Bind(wx.EVT_CLOSE, self.handleClose)
        self.Bind(wx.EVT_MENU, self.handleClose, id=1)

        self.parent = parent

        self.panel = wx.Panel(self, -1)
        self.panel.SetBackgroundColour(BACKGROUND_COLOUR)
        
        box = wx.BoxSizer(wx.VERTICAL)
        box.Add(wx.StaticText(self.panel, -1, "OSC host"), 0, wx.CENTER|wx.TOP, 5)
        self.host = wx.TextCtrl(self.panel, -1, "127.0.0.1", size=(200, -1))
        box.Add(self.host, 0, wx.CENTER | wx.ALL, 5)

        box.Add(wx.StaticText(self.panel, -1, "OSC port"), 0, wx.CENTER|wx.TOP, 5)
        self.port = wx.TextCtrl(self.panel, -1, "8000", size=(200, -1))
        box.Add(self.port, 0, wx.CENTER | wx.ALL, 5)

        box.Add(wx.StaticText(self.panel, -1, "Soft buffer"), 0, wx.CENTER|wx.TOP, 5)
        self.soft = wx.TextCtrl(self.panel, -1, "500", size=(200, -1))
        box.Add(self.soft, 0, wx.CENTER | wx.ALL, 5)

        box.Add(wx.StaticText(self.panel, -1, "Hard buffer"), 0, wx.CENTER|wx.TOP, 5)
        self.hard = wx.TextCtrl(self.panel, -1, "2000", size=(200, -1))
        box.Add(self.hard, 0, wx.CENTER | wx.ALL, 5)
        
        box.AddSpacer(10)
        self.panel.SetSizerAndFit(box)

        self.Fit()
        self.SetMinSize(self.GetSize())
        self.SetMaxSize(self.GetSize())
        self.Show()

    def handleClose(self, event):
        Settings.setHost(self.host.GetValue().strip())
        Settings.setPort(int(self.port.GetValue().strip()))
        Settings.setSoftBuffer(int(self.soft.GetValue().strip()))
        Settings.setHardBuffer(int(self.hard.GetValue().strip()))
        self.Show(False)
        