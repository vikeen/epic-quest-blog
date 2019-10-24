class IconsController < ApplicationController
    def index
        @icon_names = [
            'analysis', 'analysis-1', 'approve', 'attach', 'attractive', 'brainstorming', 'broken-link', 'chat', 'chronometer', 'compass', 'competition', 'content', 'design-tool', 'grid',
            'headphones', 'html', 'image', 'layout', 'loading', 'login', 'pantone', 'paper-plane', 'photo-camera', 'piggy-bank', 'pipette', 'pixel', 'placeholder', 'planning', 'promotion', 'pyramid', 'quality',
            'responsive', 'schedule', 'search', 'security', 'settings', 'sitemap', 'startup', 'support', 'tap', 'target', 'targeting', 'task', 'testing',
            'text','timeline','tools','upload','vector','video-player'
        ]
    end
end
