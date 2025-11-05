import 'package:flutter/material.dart';

class BrandGeneratorScreen extends StatefulWidget {
  const BrandGeneratorScreen({super.key});

  @override
  State<BrandGeneratorScreen> createState() => _BrandGeneratorScreenState();
}

class _BrandGeneratorScreenState extends State<BrandGeneratorScreen> {
  final _formKey = GlobalKey<FormState>();
  final _industryController = TextEditingController();
  final _targetAudienceController = TextEditingController();
  
  String _selectedTone = 'Professional';
  bool _isGenerating = false;
  bool _hasGenerated = false;
  
  // Generated results (mock data - will be replaced with AI API)
  String _generatedName = '';
  String _generatedTagline = '';
  String _generatedDescription = '';

  final List<String> _tones = [
    'Professional',
    'Casual',
    'Witty',
    'Luxury',
    'Minimalist',
    'Bold',
  ];

  @override
  void dispose() {
    _industryController.dispose();
    _targetAudienceController.dispose();
    super.dispose();
  }

  void _generateBrand() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isGenerating = true;
      });

      // Simulate AI generation - will be replaced with actual OpenAI/Gemini API
      await Future.delayed(const Duration(seconds: 3));

      setState(() {
        _isGenerating = false;
        _hasGenerated = true;
        _generatedName = 'InnovateTech Pro';
        _generatedTagline = 'Transform Your Digital Future';
        _generatedDescription = 'A cutting-edge technology brand focused on delivering innovative solutions for modern businesses. We combine expertise with creativity to help companies thrive in the digital age.';
      });
    }
  }

  void _regenerate() {
    _generateBrand();
  }

  void _saveAndContinue() {
    Navigator.of(context).pushNamed('/logo-generator');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AI Brand Generator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF0F8FF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tell us about your brand',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Provide some details and let AI create your brand identity',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F8C8D),
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextFormField(
                          controller: _industryController,
                          decoration: const InputDecoration(
                            labelText: 'Industry',
                            hintText: 'e.g., Technology, Fashion, Food',
                            prefixIcon: Icon(Icons.business),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your industry';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _targetAudienceController,
                          decoration: const InputDecoration(
                            labelText: 'Target Audience',
                            hintText: 'e.g., Young professionals, Students',
                            prefixIcon: Icon(Icons.people),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your target audience';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Brand Tone',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: _tones.map((tone) {
                            final isSelected = _selectedTone == tone;
                            return ChoiceChip(
                              label: Text(tone),
                              selected: isSelected,
                              onSelected: (selected) {
                                setState(() {
                                  _selectedTone = tone;
                                });
                              },
                              selectedColor: const Color(0xFF4A90E2),
                              backgroundColor: const Color(0xFFF5F7FA),
                              labelStyle: TextStyle(
                                color: isSelected ? Colors.white : const Color(0xFF2C3E50),
                                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: _isGenerating ? null : _generateBrand,
                            icon: _isGenerating
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white,
                                    ),
                                  )
                                : const Icon(Icons.auto_awesome),
                            label: Text(
                              _isGenerating ? 'Generating...' : 'Generate Brand',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (_hasGenerated) ..[
                const SizedBox(height: 24),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.celebration,
                              color: Color(0xFF4A90E2),
                              size: 28,
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Your Brand Identity',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2C3E50),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildResultItem(
                          'Brand Name',
                          _generatedName,
                          Icons.business_center,
                        ),
                        const SizedBox(height: 16),
                        _buildResultItem(
                          'Tagline',
                          _generatedTagline,
                          Icons.format_quote,
                        ),
                        const SizedBox(height: 16),
                        _buildResultItem(
                          'Description',
                          _generatedDescription,
                          Icons.description,
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: _regenerate,
                                icon: const Icon(Icons.refresh),
                                label: const Text('Regenerate'),
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  side: const BorderSide(color: Color(0xFF4A90E2)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: _saveAndContinue,
                                icon: const Icon(Icons.arrow_forward),
                                label: const Text('Continue'),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResultItem(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: const Color(0xFF4A90E2)),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF7F8C8D),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF2C3E50),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
